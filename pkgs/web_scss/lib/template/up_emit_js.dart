// 请给出代码示例(HTML、unpoly.js、unpoly.css都写在一个页面中)说明如何使用 unpoly up.emit()
String upEmitJs() => """
<html>
<head>
  <title>Unpoly Event Example</title>
  <script src="/js/unpoly@3.8.0.min.js"></script>
  <link rel="stylesheet" href="/styles/unpoly@3.8.0.min.css">
</head>
<body>
  <h1>Unpoly Event Example - up.emit()</h1>
  <button id="trigger-event">触发事件</button>
  <div>
    <p id="event-target">等待事件触发...</p>
  </div>
  <script>
    // 触发事件
    document.getElementById('trigger-event').addEventListener('click', () => {
      up.emit('myCustomEvent', { message: 'Hello from Unpoly!' });
    });
    // 监听事件
    up.on('myCustomEvent', (event) => {
      document.getElementById('event-target').innerHTML = event.message;
    });
  </script>
</body>
</html>
""";