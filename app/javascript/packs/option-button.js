console.log("K");
let optionsButton = document.getElementById("options-button");
  optionsButton.addEventListener("click", (e) => {
    document.querySelector('.active').classList.remove('active')
    document.getElementById("opt-btn").classList.add('active')
  });

