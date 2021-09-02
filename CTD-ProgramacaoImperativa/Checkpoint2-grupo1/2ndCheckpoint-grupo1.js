
/* 

Olá, você foi contratado para executar este projeto. É importante que você analise, 
entenda o pedido do cliente e desenvolva conforme solicitado. 

Veja abaixo os requisitos do projeto:

- Precisamos desenvolver um menu para um microondas super veloz, onde teremos 5 opções 
de comida com seus respectivos tempos pré-definidos. 

      1 - Pipoca – 10 segundos (padrão);
      2 - Macarrão – 8 segundos (padrão);
      3 - Carne – 15 segundos (padrão);
      4 - Feijão – 12 segundos (padrão);
      5 - Brigadeiro – 8 segundos (padrão); 

- O usuário poderá alterar o tempo padrão, aumentando ou diminuindo de acordo com sua 
vontade. Se o tempo informado for maior que 2x o necessário, exibir mensagem que 
a comida queimou.

- Se o tempo for menor que o padrão, exibir a mensagem: "tempo insuficiente"; 

- Opções não listadas no menu, devem exibir uma mensagem de erro: "Prato inexistente";

- Se o tempo for 3x maior que o necessário para o prato, o microondas deve exibir a 
mensagem: “kabumm”;

- No final de cada tarefa, o microondas deverá exibir a mensagem: 
"Prato pronto, bom apetite!!!".
*/


//------------------------------------------------------------------------------------------
// FUNÇÃO PIPOCA
//------------------------------------------------------------------------------------------
let pipoca = function()
{
    console.log();
    console.log("Pipoca - Tempo padrão 10 segundos. Deseja alterar o tempo? s/n");
    //let respPipoca = 's';

    if (respPipoca=='s') {
        if (tempo < 10){
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Tempo Insucifiênte. :-|")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 10 && tempo < 20) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Prato Pronto, bom apetite")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 20 && tempo < 30) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("A comida queimou. :(")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 30) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("KaaBUMMM!!! -_-")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else {
            console.log("Preparando...")
            function dezSegundos() {
                console.log("10 segundos. Prato Pronto, bom apetite")
            }
            setTimeout(dezSegundos, 1000*10);
        }
    }
}

//------------------------------------------------------------------------------------------
// FUNÇÃO MACARRÃO
//------------------------------------------------------------------------------------------
let macarrao = function() {
    console.log()
    console.log("Macarrão - Tempo padrão 8 segundos. Deseja alterar o tempo? s/n")
    //let respMacarrao = 'n';

    if (respMacarrao=='s') {
        if (tempo < 8) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Tempo Insucifiênte. :-|")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 8 && tempo < 16) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Prato Pronto, bom apetite")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 16 && tempo < 24) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("A comida queimou. :(")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 24) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("KaaBUMMM!!! -_-")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else {
            console.log("Preparando...")
            function oitoSegundos() {
                console.log("8 segundos. Prato Pronto, bom apetite")
            }
            setTimeout(oitoSegundos, 1000*8);
        }
    }
}

//------------------------------------------------------------------------------------------
// FUNÇÃO CARNE
//------------------------------------------------------------------------------------------
let carne = function() {
    console.log()
    console.log("Carne - Tempo padrão 15 segundos. Deseja alterar o tempo? s/n")
    //let respCarne = 'n';

    if (respCarne=='s') {
        if (tempo < 15) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Tempo Insucifiênte. :-|")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 15 && tempo < 30) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Prato Pronto, bom apetite")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 30 && tempo < 45) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("A comida queimou. :(")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 45) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("KaaBUMMM!!! -_-")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else {
            console.log("Preparando...")
            function quinzeSegundos() {
                console.log("15 segundos. Prato Pronto, bom apetite")
            }
            setTimeout(quinzeSegundos, 1000*15);
        }
    }
}

//------------------------------------------------------------------------------------------
// FUNÇÃO FEIJÃO
//------------------------------------------------------------------------------------------
let feijao = function() {
    console.log()
    console.log("Feijão - Tempo padrão 12 segundos. Deseja alterar o tempo? s/n")
    //let respFeijao = 'n';

    if (respFeijao=='s') {
        if (tempo < 12) {
            console.log("Preparando...")
            function preparoSegundos() {
            console.log("Tempo Insucifiênte. :-|")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 12 && tempo < 24) {
            console.log("Preparando...")
            function preparoSegundos() {
            console.log("Prato Pronto, bom apetite")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 24 && tempo < 36) {
            console.log("Preparando...")
            function preparoSegundos() {
            console.log("A comida queimou. :(")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 36)
            {console.log("Preparando...")
            function preparoSegundos() {
            console.log("KaaBUMMM!!! -_-")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else {
            console.log("Preparando...")
            function dozeSegundos() {
                console.log("12 segundos. Prato Pronto, bom apetite")
            }
            setTimeout(dozeSegundos, 1000*12);
        }
    } 
}

//------------------------------------------------------------------------------------------
// FUNÇÃO BRIGADEIRO
//------------------------------------------------------------------------------------------
let brigadeiro = function() {
    console.log()
    console.log("Brigadeiro - Tempo padrão 8 segundos. Deseja alterar o tempo? s/n")
    //let respBrigadeiro = 'n';

    if (respBrigadeiro=='s') {
        if (tempo < 8) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Tempo Insucifiênte. :-|")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 8 && tempo < 16) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("Prato Pronto, bom apetite")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 16 && tempo < 24) {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("A comida queimou. :(")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else if (tempo >= 24) { 
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("KaaBUMMM!!! -_-")
            }
            setTimeout(preparoSegundos, 1000*tempo)
        } else {
            console.log("Preparando...")
            function preparoSegundos() {
                console.log("8 segundos. Prato Pronto, bom apetite")
            }
            setTimeout(oitoSegundos, 1000*8);
        }
    }
}


//------------------------------------------------------------------------------------------
// PROGRAMA
//------------------------------------------------------------------------------------------
console.log("--------------------------\n\
--------MICROONDAS--------\n\
--------------------------")
console.log()

// Escolha do prato no menu
console.log("Deseja preparar qual prato?\n\
1 - Pipoca\n\
2 - Macarrão\n\
3 - Carne\n\
4 - Feijão\n\
5 - Brigadeiro");

// Opção do menu, escolha do prato
var menu = 1;
// Determinação do tempo de preparo - escolha do usuário. 
var tempo = 20;

// Se 's' significa que o tempo de preparo é diferente do tempo padrão. 
// Se 'n' o programa contará que o tempo de preparo é o padrão de cada prato. 
let respPipoca = 's';
let respMacarrao = 's';
let respCarne = 's';
let respFeijao = 's';
let respBrigadeiro = 's';

// Conforme o número do prato entra na função de preparo do prato
switch (menu) {
      case 1:
        pipoca()
        break

      case 2:
        macarrao()
        break

      case 3:
        carne()
        break

      case 4:
        feijao()
        break

      case 5:
        brigadeiro()
        break

      default:
        console.log()
        console.log("Prato Inexistente.")
}
