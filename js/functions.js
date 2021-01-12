var Window0;
function open(){
      Window0=window.open('','','width=300, height=300');
      Window0.document.body.style.backgroundImage = "url('https://www.levistrauss.com/wp-content/uploads/2020/05/Black_Box.png')";
      Window0.moveTo(pos(0,1000), pos(0,1000));
      Window0.focus();
  }
  function pos(){
    return Math.floor(Math.random() * (max - min + min));
  }