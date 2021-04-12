function REQ_TEST() {
    var id = document.getElementById('id')
    if (id.value === "") {
        setTimeout(function () {
            id.readOnly = false;
            id.value = "";
        }, 2000);
        id.readOnly = true;
        id.value = "Failed!";
    } else {
        var output = document.getElementById('output')

        const http = new XMLHttpRequest();
        var url = `http://localhost:3000/?object=${id.value}`;

        http.open("POST", url);
        http.send();

        http.onreadystatechange = (e) => {
            output.value = http.responseText
        }
    }
}

function CLEAR_OUTPUT() {
    var output = document.getElementById('output')
    output.value = ""
}