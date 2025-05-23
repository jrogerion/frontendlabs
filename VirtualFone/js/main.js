const display = document.querySelector('input[type=tel]');
const teclas =  document.querySelectorAll('input[type=button]');


// Criar uma condição para naõ mostrar mais numeros no display quando
// cheagar a 14 numeros
function valorTeclaToDisplay (i) {
    display.value += teclas[i].value;
};



for (let i = 0; i < teclas.length; i++) {
    teclas[i].onclick = () => {
        valorTeclaToDisplay(i);
    }
};

const limpar = document.querySelector('.icon');

limpar.onclick = () =>  {
    const opcao = confirm('Deseja mesmo limpar?');
    if (opcao) {
        display.value = '';
    };
    
};

