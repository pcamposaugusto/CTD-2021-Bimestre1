function Restaurante(nome, cardapio) {
    this.nome = nome;
    this.cardapio = cardapio;
    this.saudacao = function entrada() {return "Bem-vindo, bem-vinda ao " + nome + "! O menu do dia é: " + cardapio;}
}

let primeiroRestaurante = new Restaurante("Cantina Dona Paula", ["Salada de Camarão", " Filé Mignon ao molho madeira", " Vinho tinto português São Miguel", " Sorvete de Pistache."]);

console.log(primeiroRestaurante.saudacao());