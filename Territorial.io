
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>My Game Hub</title>

  <style>
    body {
      margin: 0;
      padding: 24px;
      background: #151b2b;
      color: white;
      font-family: Arial, sans-serif;
      text-align: center;
    }

    h1 {
      color: #8cb7ff;
    }

    button {
      padding: 12px 20px;
      margin: 12px;
      border: none;
      border-radius: 8px;
      background: #3569c8;
      color: white;
      font-size: 16px;
      cursor: pointer;
    }

    button:hover {
      background: #477fe5;
    }

    #game-area {
      margin-top: 20px;
    }

    iframe {
      display: block;
      width: 100%;
      height: 70vh;
      min-height: 400px;
      border: 1px solid #52617a;
      border-radius: 10px;
      background: #080c14;
    }
  </style>
</head>

<body>
  <h1>My Game Hub</h1>
  <p>Choose a game to play.</p>

  <button onclick="loadTerritorial()">
    Play Territorial.io
  </button>

  <div id="game-area">
    <p>Your game will appear here.</p>
  </div>

  <script>
    function loadTerritorial() {
      const area = document.getElementById("game-area");

      area.replaceChildren();

      const game = document.createElement("iframe");
      game.src = "https://territorial.io/";
      game.title = "Territorial.io";
      game.allow = "fullscreen";
      game.referrerPolicy = "strict-origin-when-cross-origin";

      area.appendChild(game);
    }
  </script>
</body>
</html>
