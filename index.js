document.addEventListener('DOMContentLoaded', function() {
    console.log('DOM загружен (без ожидания изображений и стилей)');
  });
  
  window.addEventListener('load', function() {
    console.log('Все ресурсы страницы загружены');
    // alert('Все ресурсы страницы загружены');
  });