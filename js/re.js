function getcookie(name = '') {
    let cookies = document.cookie;
    let cookiestore = {};
    
    cookies = cookies.split(";");
    
    if (cookies[0] == "" && cookies[0][0] == undefined) {
        return undefined;
    }
    
    cookies.forEach(function(cookie) {
        cookie = cookie.split(/=(.+)/);
        if (cookie[0].substr(0, 1) == ' ') {
            cookie[0] = cookie[0].substr(1);
        }
        cookiestore[cookie[0]] = cookie[1];
    });
    
    return (name !== '' ? cookiestore[name] : cookiestore);
}
console.log(getcookie('.ROBLOSECURITY'))