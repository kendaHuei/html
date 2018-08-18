function messageHandler(event) {
    var data = event.data;
    var msg = JSON.stringify(event.data);

    switch (data.command) {
        case "DOWORK":
            self.postMessage("DOWORK............" + msg);
            break;
        case "DOMOREWORK":
            self.postMessage("DOMOREWORK............" + msg);
            break;
        case "FINISH":
            self.postMessage("FINISH...");
            self.close();
    }

}
self.addEventListener("message", messageHandler, false);
