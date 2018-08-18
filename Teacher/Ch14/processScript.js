//throw Error("xxxxxxxxxxxxxxxx");
function messageHandler(event) {
    self.postMessage("Received: " + event.data);
}
self.addEventListener("message", messageHandler, false);
