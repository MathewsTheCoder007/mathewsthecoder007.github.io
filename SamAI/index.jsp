<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sam</title>
    <link rel="stylesheet" href="main.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script>
        function record() {
            var recognition = new webkitSpeechRecognition();
            recognition.lang = "en-GB";

            recognition.onresult = function(event) {
                console.log(event);
                document.getElementById('speechToText').value = event.results[0][0].transcript;
            }
            recognition.start();

        }
    </script>
</head>
<body>
    <%= new java.util.Date() %>
    <marquee><h1>Hello! I am Sam<sup>TM</sup></h1></marquee>
    <center><button class="talk">Talk</button>
    <h3 class="content"></h3>
    <form action="https://www.google.com/search?q=" method="GET">
        <label for="Speech Recognition">Speech Recognition</label>
        <input type="search" name="query" id="speechToText" placeholder="Speak Something">
           <i class="fas fa-microphone-alt" onclick="record()"></i>
    </form>
</center>
    <script src="main.js"></script>
</body>
</html>