const loginbutton = document.querySelector('.button')

loginbutton.addEventListener("click", () =>
    save()
);

function save(){
var haz3rkey = document.getElementsByName('info')[0].value;
    localStorage.setItem('HAZEKey', haz3rkey)
}