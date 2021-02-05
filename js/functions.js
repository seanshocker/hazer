function login() {
    var data = document.getElementById('info')
    var key = document.getElementById('key')
    if (data.value == "") {
      setTimeout(function () {
        document.getElementById('info').readOnly = false;
        document.getElementById('info').value = "";
      }, 2000);
      document.getElementById('info').readOnly = true;
      document.getElementById('info').value = "Please type the key!";
      document.getElementsByName('yourkey')[0].value = "";
    } else {
      if (data.value == key.value) {
        console.log('Correct key!')
        event.preventDefault()
        sessionStorage.setItem('hazeKey', 'true')
        window.location.href = "./home.html";
      } else { // this happens if they dont even put the right key cuz they are idiot
        setTimeout(function () {
          document.getElementById('info').readOnly = false;
          document.getElementById('info').value = "";
        }, 2000);
        document.getElementById('info').readOnly = true;
        document.getElementById('info').value = "Thats the wrong key!";
        document.getElementsByName('yourkey')[0].value = "";
        event.preventDefault()
      }
    }
  }

  function generate() {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for (var i = 0; i < 15; i++)
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    document.getElementById('key').value = text
    document.getElementsByName('yourkey')[0].value = text
    return text;
  }
  if (sessionStorage.getItem('hazeKey')) { // lol
    console.log('Ready to go!')
    window.location.href = "./home.html";
  } else {
    console.log('Welcome.')
  }