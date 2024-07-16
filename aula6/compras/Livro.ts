class Livro implements Produtos {
    constructor(public nome: string, public tipo: string, public preco: number) {}

    calcularValorTotal(): number {
        return this.preco;
    }
}
class Eletronico implements Produtos {
    constructor(public nome: string, public tipo: string, public preco: number) {}

    calcularValorTotal(): number {
        return this.preco * 1.15; 
    }
}

class Alimento implements Produtos {
    constructor(public nome: string, public tipo: string, public preco: number) {}

    calcularValorTotal(): number {
        return this.preco * 1.05; 
    }
}