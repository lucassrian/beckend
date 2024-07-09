export class Moto{
    cor:string
    marca:string
    potencia:number
    velocidade:number


    constructor(cor:string, marca:string, potencia:number, velocidade:number){

    this.cor = cor  
    this.marca = marca
    this.potencia = potencia
    this.velocidade = velocidade
 }

 descrição():void{
    console.log(` eu tenho uma moto ${this.cor} da ${this.marca} que possui ${this.potencia}. `)
 }

 acelerar():void{
    console.log(`A moto com uma potencia de ${this.potencia} vaio de 0 a 100 em 6seg`)
 }

 abastecer():void{
    console.log(`A moto `)
 }

 getvelocidade():number{
    return this.velocidade
 }

 setvelocidade(novaVelocidade:number):void{
  if(this.velocidade > 0 ){
    this.velocidade = novaVelocidade
  }else{
    console.log("A velocide não pode 0 ou negativa.")
  }

 }
}