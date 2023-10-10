const checkboxes = document.querySelectorAll("input[name='rValue']");

checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function() {
        if (this.checked) {
            checkboxes.forEach(box => {
                if (box !== this) {
                    box.checked = false;
                }
            });
        }
    });
});
