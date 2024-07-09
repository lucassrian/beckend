export class Carro{
   private cor:string
   private marca:string
   private potencia:number
   private velocidade:number


    constructor(cor:string, marca:string, potencia:number, velocidade:number){

    this.cor = cor  
    this.marca = marca
    this.potencia = potencia
    this.velocidade = velocidade
 }

 descrição():void{
    console.log(`Eu tenho um carro ${this.cor} da ${this.marca} que possui ${this.potencia}. `)
 }

 acelerar():void{
    console.log(`O carro com uma potencia de ${this.potencia} vaio de 0 a 100 em 6seg`)
 }

 abastecer():void{
    console.log(`O carro está enchendo a tanque.`)
 }

 getvelocidade():number{
    return this.velocidade
 }

 setvelocidade(novaVelocidade:number):void{
  if(this.velocidade > 0 ){
    this.velocidade = novaVelocidade
  }else{
    console.log("A velocide não pode ser 0 ou negativa.")
  }

 }

 getcor():string{
    return this.cor 
 }

 setCor(novaCor:string):string{
    return this.cor = novaCor
 }

 getmarca():string{
    return this.marca
 }

 setMarca(novaMarca:string):string{
    return this.marca = novaMarca
 }

 getpotencia():number{
    return this.potencia
 }

 setpotencia(novaPotencia:number):number{
    return this.potencia = novaPotencia
 }
}