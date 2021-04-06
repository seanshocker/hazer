function GET_TEST() {
    var id = document.getElementById('id')
    var output = document.getElementById('output')

    const http = new XMLHttpRequest();
    var url = `avatar.roblox.com/v1/users/${id.value}/avatar`;
    
    http.open("GET", url);
    http.send();

    http.onreadystatechange=(e)=>{
        output.value = http.responseText
    }
}