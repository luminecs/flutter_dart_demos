// 请给出代码示例(HTML、unpoly.js、unpoly.css都写在一个页面中)说明如何使用 unpoly a[up-emit]
/// a[up-emit]
String upEmit() => """
<html>
<head>
  <title>Unpoly up-emit Example</title>
  <script src="/js/unpoly@3.8.0.min.js"></script>
  <link rel="stylesheet" href="/styles/unpoly@3.8.0.min.css">
</head>
<body>
  <h1>Unpoly up-emit Example</h1>
  <a href="#" up-emit="custom-event">Click me to emit a custom event</a>
  <div id="result"></div>
  <script>
    up.on('custom-event', function(event) {
      document.getElementById('result').textContent = 'Custom event was emitted at ' + new Date().toLocaleTimeString()
    })
  </script>
</body>
</html>
""";