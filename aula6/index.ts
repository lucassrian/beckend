/*let nome:string = 'lucas'

let idade:number  = 16

let souEstudante:boolean  = true
console.log(`Meu nome é ${nome} e tenho ${idade} anos. Sou estudante?${souEstudante}`)*/
/*import * as readlineSync from 'readline-sync';

let nome:string =(readlineSync.question('Informe o seu nome:')) 

let idade:number  = readlineSync.question('Informe a sua idade:') 

let temCarteira:string  = readlineSync.question('Você tem carteira:')
if 

function podeDirigir (nome:string, idade:number, temCarteira:string):void{
    if ( idade > 18 && temCarteira === 'sim' ){
        console.log('Pode dirigir!!');
    } else{
        console.log('Não pode dirigir');
}
        
}
podeDirigir( nome, idade, temCarteira)*/

// ARRAY

/*let arr:Array<number> - [1, 2, 3, 4]

//ou

let array:number[]= [1, 2, 3, 4]

// OBJETOS

let person:(name:string, age:number)= {
    name:'luacas'
    age:16
}

// FUNCTION

function soma(num1:number, num2:number):number{
    return num1+num2
}


function frase(nome:string)string{
    return `Olá ${nome}, tudo bem?`
}

function frase(name?:string)void{
    console.log("hello", name || "world")  

    // o "?" faz com que se não imprimir o "name" ele imprima "world"

}*/

// Molde para objetos tipo cachorro
/*class Cachorro{
    nome:string
    peso:number
    pelagem:string
    raça:string

    constructor (dogNome:string, dogPeso:number ,dogPelagem:string ){
        this.nome = dogNome
        this.peso = dogPeso
        this.pelagem = dogPelagem
        this.raça = 'raça'
    }    

    latir():void{
        console.log(`${this.nome} está latindo.`)

    }

    correr():void{
        console.log(`${this.nome} o cachorro está correndo.`)
    }

    comer():void{
        console.log(`${this.nome} o cachorro está comendo.`)
    }

    

}

const meuCachorro:Cachorro = new Cachorro('Tomy', 5, 'amarelo')
console.log(meuCachorro.nome)

meuCachorro.latir()
meuCachorro.correr()


class Coruja{
    nome:string
    raça:string
    penas:string

    constructor(coNome:string, coRaça, coPenas){
        this.nome = coNome
        this.raça = coRaça
        this.penas = coPenas
    }

    voar():void{
        console.log(`${this.nome} está voando`)
    }

    comer():void{
        console.log(`${this.nome} está comendo `)
    }

    chirriar():void{
        console.log(`${this.nome} está chirriando`)
    }
} 

const*/  

/*class Carro{
    marca:string
    cor:string
    potencia:power


    constructor(brand:string, color:string, power:number){

    }


}*/


class Personagem{
    nome:string;
    classe:string;
    força:number;
    saude:number;
    raça:string;

    constructor(perNome:string, perClasse:string, perForça:number, ){
        this.nome = perNome
        this.classe = perClasse
        this.força = perForça
        this.saude = 100;
    }
}