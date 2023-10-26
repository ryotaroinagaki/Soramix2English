document.addEventListener('turbo:load', function() {
  var text = document.querySelector('#text')
  var speakBtn = document.querySelector('#speak-btn')

  speakBtn.addEventListener('click', function() {
    const uttr = new SpeechSynthesisUtterance(text.value)
    uttr.voice = speechSynthesis.getVoices()
                  .filter(voice => voice.name === 'Google US English')[0]
    speechSynthesis.speak(uttr)
  });
});