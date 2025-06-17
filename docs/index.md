
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🐧 Linux Command Cheat Sheet</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 2em;
      background-color: #f4f4f4;
      color: #333;
    }
    h1 {
      color: #222;
      text-align: center;
    }
    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin: 20px 0;
      font-size: 1em;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .section {
      background: white;
      padding: 1em;
      border-radius: 8px;
      margin-bottom: 20px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    pre {
      background: #272822;
      color: #f8f8f2;
      padding: 1em;
      border-radius: 5px;
      overflow-x: auto;
    }
    .hidden {
      display: none;
    }
  </style>
</head>
<body>
  <h1>🐧 Linux Command Cheat Sheet</h1>
  <input type="text" id="searchBox" placeholder="🔍 Search for a command...">

  <div id="cheatSheet">
    <div class="section">
      <h2>DOCKER</h2>
      <pre>docker ps -a
docker run -it ubuntu
docker build -t myimage .
docker stop $(docker ps -aq)</pre>
    </div>
    <div class="section">
      <h2>GIT</h2>
      <pre>git status
git add .
git commit -m "message"
git push origin main</pre>
    </div>
    <div class="section">
      <h2>UFW</h2>
      <pre>sudo ufw enable
sudo ufw status
sudo ufw allow 22
sudo ufw deny 80</pre>
    </div>
  </div>

  <script>
    const searchBox = document.getElementById('searchBox');
    const sections = document.querySelectorAll('.section');

    searchBox.addEventListener('input', () => {
      const query = searchBox.value.toLowerCase();
      sections.forEach(section => {
        const content = section.textContent.toLowerCase();
        section.classList.toggle('hidden', !content.includes(query));
      });
    });
  </script>
</body>
</html>
