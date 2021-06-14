const acaoCarro = (callback) => callback;

const andar = () => console.log("O carro está andando.");

const parar = () => console.log("O carro parou.");

acaoCarro(andar());
acaoCarro(parar());