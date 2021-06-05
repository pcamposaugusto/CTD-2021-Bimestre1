let listaDeCompras = ['feijão', 'arroz', 'frango', 'peixe', 'álcool', 
'sabão em pó', 'sabonete', 'pasta de dente', 'queijo', 'frutas da estação'];

let listaSeparadaPorTraço = listaDeCompras.join(' - ');
console.log('O método Join unifica todos os elementos presentes de um array em uma única string, separando-os por vírgula (separação padrão) ou por outro separador opcional (neste caso, um traço). Ele retorna uma string com os elementos unidos.');
console.log(listaSeparadaPorTraço);

let ultimoElemento = listaDeCompras.pop();
console.log('O método Pop elimina o último elemento de um array, não recebe parâmetro e retorna o elemento eliminado.');
console.log(ultimoElemento);

listaDeCompras.push('macarrão', 'molho de tomate');
console.log('O método Push adiciona um ou mais elementos ao final do array, recebe um ou mais elementos como parâmetros (separados por vírgula) e retorna o novo comprimento do array.');
console.log(listaDeCompras);

let primeiroElemento = listaDeCompras.shift();
console.log('O método Shift elimina o primeiro elemento (de índice zero) de um array, não recebe parâmetro e retorna o elemento eliminado.');
console.log(primeiroElemento);

listaDeCompras.unshift('flocão de milho', 'grão de bico');
console.log('O método Unshift adiciona um ou mais elementos ao início de um array, recebe um ou mais elementos como parâmetro e retorna o novo comprimento do array.');
console.log(listaDeCompras);