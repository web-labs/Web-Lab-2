const yButtons = document.querySelectorAll('.y-button');
let yVal;
    yButtons.forEach((button) => {
        button.style.border = "1px solid green";
        button.style.borderRadius = "10px";
        button.style.fontSize = "16px";
        button.style.cursor = "pointer";
        button.style.borderRadius = "12px"
        button.addEventListener('click', function(event) {
            event.preventDefault();

            yButtons.forEach((btn) => {
                btn.style.background = null;
                btn.style.color = null;
                btn.style.padding = null;
            });

            this.style.background = "#45a049";
            this.style.color = "white";



            yVal = this.value;
        });
    });

