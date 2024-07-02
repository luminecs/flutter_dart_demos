String tachyonsPage() => """
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Functional CSS</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/styles/tachyons5.min.css">
</head>
<body class="debug-grid">

<h1>Test</h1>

<button type="button" class="db pointer br2 ba bg-white p3 mx4 my4 hover-bg-gray-9 border-box">
Default
</button>

<button class="bw0 br2 blue p2 px3 white fw1 tc ttu tracked">
do what you love
</button>

<div class='p4'>
  <h1 class='white bg-gray-0 mw5 center tc br4 ba'>
  Hello World!
  </h1>
</div>

<div id="main" class='pl4'>
  <p class='f6 f-body'>
    If you need inspiration getting started with Learning Web,
    Check the <a href='https://web.dev' target='_blank'>Component Guide</a>.
  </p>
</div>

<button class='p2 br2 fw6 tc ttu white bg-gold-6 tracked-mega'>
do what you love
</button>

<div class='ml7 mt5 mb4 f4'>
  <button class='bw0 br2 white bg-blue-6 px2 py3 fw1 tc ttu tracked'>
    Click
  </button>
</div>

<pre>
  lumine@fedora:~&#36; mise ls
  Plugin   Version        Config Source              Requested    
  flutter  3.19.0-stable  ~/.config/mise/config.toml 3.19.0-stable
  flutter  3.22.1-stable                                          
  flutter  3.22.2-stable                                          
  node     12.22.12                                               
  node     14.21.3                                                
  node     15.14.0                                                
  node     16.20.2                                                
  node     21.7.3                                                 
  node     22.1.0         ~/.tool-versions           22.1.0       
  ruby     3.1.3          ~/.config/mise/config.toml 3.1.3 
</pre>

</body>
</html>
""";