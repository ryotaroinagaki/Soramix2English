document.addEventListener('turbo:load', function() {
  var text = document.querySelector('#text')    
  var voiceSelect = document.querySelector('#voice-select')
  var speakBtn = document.querySelector('#speak-btn')
  
  function appendVoices() {
    voiceSelect.innerHTML = ''
    const option = document.createElement('option')
    option.value = 'Google US English'
    voiceSelect.appendChild(option)
  }
  
  appendVoices()
  
  speechSynthesis.onvoiceschanged = e => {
    appendVoices()
  }
  
  speakBtn.addEventListener('click', function() {
    const uttr = new SpeechSynthesisUtterance(text.value)
    uttr.voice = speechSynthesis
      .getVoices()
      .filter(voice => voice.name === voiceSelect.value)[0]
    speechSynthesis.speak(uttr)
  });
  });