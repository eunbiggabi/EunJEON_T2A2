// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)



let hamburger = document.getElementById("hamburger-menu")

hamburger.addEventListener("click", () => {
    let menu = document.getElementById("menu")
    menu.classList.toggle("hidden")
})
