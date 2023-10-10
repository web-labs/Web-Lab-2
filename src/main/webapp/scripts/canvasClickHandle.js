const canvas = document.getElementById('canvas')
canvas.addEventListener('click', function (event){
    const rect = canvas.getBoundingClientRect();
    const x = event.clientX - rect.left;
    const y = event.clientY - rect.top;

    const chosenCheckboxes = document.querySelectorAll("input[name='rValue']:checked");
    const rVal = Array.from(chosenCheckboxes).map(checkbox => checkbox.value);

    const user = document.querySelector('#user').value;

    const normalCoords = toNormalCoords(x, y, rVal, 350);

    if (rVal.length !== 0){
        sendRequest(normalCoords.x, normalCoords.y, rVal, user, "canvasPoint");
        //drawPoint(x, y);
    } else {
        Toastify({
            text: "You must have chosen R range",
            className: "error",
            style: {
                background: "linear-gradient(to right, #ff6347, #ff0000)",
                border: "1px solid white",
                'font-size': "20px"
            },
            offset: {
                x: 0,
                y: 0
            },
            position: "center",
        }).showToast();
    }


})