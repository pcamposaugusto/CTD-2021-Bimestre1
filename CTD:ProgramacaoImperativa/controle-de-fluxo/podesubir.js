let podeSubir = function (altura, acompanhada) {
    if(altura > 1.40 && altura < 2.00) {
        return 'Acesso autorizado.';
    } else if(altura > 1.20 && altura < 1.40) {
        if(acompanhada === true) {
            return 'Acesso autorizado somente com acompanhante.';
        } else {
            return 'Sem acompanhante o acesso é negado.';
        }
    } else {
        return 'Acesso negado.';
    }
}

console.log(podeSubir(1.62, true));
console.log(podeSubir(1.22, false));
console.log(podeSubir(1.30, true));
console.log(podeSubir(2.1, false));
console.log(podeSubir(1.80, false));
