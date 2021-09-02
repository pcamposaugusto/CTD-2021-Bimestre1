// Micro desafios

/* 1. Crie um array de números pares, e utilizando a função .map() nesse array, crie um novo array com 
apenas números ímpares. */

let numPares = [2, 4, 6, 8, 10, 12, 14];

let numImpares = numPares.map(function(num){
    return num + 1;
});

console.log(numImpares);


/* 2. Crie um array de nomes, que possua dois índices com o nome Maria. Utilize o .filter() para obter 
apenas esses dois índices com o nome Maria. */

let nomes = ["Paula", "José", "Arthur", "Maria", "Sandra", "Gilberto", "Maria"];

let nomeMaria = nomes.filter(function(nome){
    return nome === "Maria"
});

console.log(nomeMaria);

/* 3. Crie um array de números e utilize a função .reduce() para devolver uma string com os números 
formatados. Exemplo [1,5,9,3,7] => “1 – 5 – 9 – 3 – 7” */

let numeros = [10, 23, 35, 47, 58];

let format = numeros.reduce(function(acumulador, numero){
    return acumulador = acumulador + " - " + numero;
});

console.log(format);

/* 4. Crie um array de animais, após isso passe por cada índice utilizando o .forEach() e imprima a frase 
“O animal é NOME_DO_ANIMAL”. */

let animais = ["gato", "cachorro", "vaca", "girafa", "porco", "elefante"];

animais.forEach(function(animal){
    console.log("O animal é " + animal);
});

