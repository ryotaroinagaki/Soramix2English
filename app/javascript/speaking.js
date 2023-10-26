document.addEventListener('turbo:load', function() {
  document.querySelector('#start-btn').onclick = () => {
    initializeSpeechRecognition();
    document.querySelector('#reset-btn').style.display = 'block'; 
    }
    
  var startBtn;
  var resetBtn;
  var resultDiv;

  function initializeSpeechRecognition() {
    startBtn = document.querySelector('#start-btn');
    resetBtn = document.querySelector('#reset-btn');
    resultDiv = document.querySelector('#result-div');
  
    SpeechRecognition = webkitSpeechRecognition || SpeechRecognition;
    let recognition = new SpeechRecognition();
  
    recognition.lang = 'en-US';
    recognition.interimResults = true;
  
    let finalTranscript = ''; // 確定した(黒)認識結果
  
    recognition.onresult = (event) => {
      let interimTranscript = ''; // 暫定(灰色)認識結果
      for (let i = event.resultIndex; i < event.results.length; i++) {
        let transcript = event.results[i][0].transcript;
        if (event.results[i].isFinal) {
          finalTranscript += '<div>' + transcript + '</div>';
        } else {
          interimTranscript = transcript;
        }
      }
      resultDiv.innerHTML = finalTranscript + '<i style="color:#ddd; font-size: 20px;">' + interimTranscript + '</i>';
    }

    startBtn.onclick = () => {
      recognition.start();
    };
    resetBtn.onclick = () => {
      finalTranscript = '';
      interimTranscript = '';
      resultDiv.innerHTML = '';
    };
    recognition.start();
  }
});