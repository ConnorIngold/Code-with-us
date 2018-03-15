console.log("K");
let messageButton = document.getElementById("message-button");
if (messageButton) {
  messageButton.addEventListener("click", (e) => {
    document.querySelector('.active').classList.remove('active')
    document.getElementById("msg-btn").classList.add('active')
  });
}

