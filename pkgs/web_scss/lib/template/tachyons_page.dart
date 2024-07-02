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

</body>
</html>
""";