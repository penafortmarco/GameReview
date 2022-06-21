
let alert = document.getElementById('error-msg');
let button = document.getElementById('log-btn')
let inputPassw = document.getElementById('password')
button.disabled = true;
button.style.cursor = 'auto';
inputPassw.onkeyup = function () { Compare(); }

function Compare() {

    if (inputPassw.value.length < 8) {
        alert.style.display = 'inherit'
        button.disabled = true;
        button.style.cursor = 'auto';
    } else {
        alert.style.display = 'none';
        button.disabled = false;
        button.style.cursor = 'pointer';
    }
}
