// Primeiro exercício:

const numerosPrimos = [2, 3, 5, 7, 11, 13, 17, 19];

const numeros = [0, 1, 4, 6, 8, 9, 10, 20];

const numerosJuntos = [...numerosPrimos, ...numeros];

console.log(numerosJuntos);


// Segundo exercício:

function maiorNumero(...n) {
    return Math.min(...n);
}

console.log(maiorNumero(20, 43, 15, 89, 74, 105));

