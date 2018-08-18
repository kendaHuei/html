var connections = 0;
onconnect = function (event) {
    var port = event.ports[0];
    connections++;
    port.onmessage = function (e) {
        port.postMessage("hi " 
        + e.data + "," 
        + connections);
    }
    
}