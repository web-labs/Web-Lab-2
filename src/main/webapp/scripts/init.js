window.onload = function () {
   drawCoordsPlane()
}

window.addEventListener("load", function (){
    const savedUser = sessionStorage.getItem("user");
    if (savedUser !== null ){
        userInput.value = savedUser;
    }
    drawCoordsPlane();
})

const userInput = document.querySelector('#user');
userInput.addEventListener("input", function (){
    sessionStorage.setItem("user", userInput.value);
})