/*function imprimirMenu(){
    let mensagem = ""
     mensagem+= "//// Sistema De Cadastro De Doadores De Sangue //// \n"
     mensagem+= "1. Cadastrar Doador \n"
     mensagem+= "2. Listar Doadores \n"
     mensagem+= "3. Buscar Doador por Data da Última Doação \n"
     mensagem+= "5. Sair \n"
     mensagem+=  "Escoha Uma Opção: \n"

     

    prompt(mensagem)

     return opcao 
} 
imprimirMenu()*/
// Array para armazenar os doadores
let doadores = []

// Função para cadastrar um novo doador
function cadastrarDoador() {
    let nome = prompt("Digite o nome do doador:")
    let idade = prompt("Digite a idade do doador:")
    let peso = prompt("Digite o peso do doador:")
    let tipoSanguineo = prompt("Digite o tipo sanguíneo do doador:")
    let ultimaDoacao = prompt("Digite a data da última doação (dd/mm/aaaa):")

    // Criando um objeto com as informações do doador
    let novoDoador = {
        nome: nome,     
        idade: idade,
        peso: peso,
        tipoSanguineo: tipoSanguineo,
        ultimaDoacao: ultimaDoacao
    }

    // Adicionando o novo doador ao array de doadores
    doadores.push(novoDoador)

    alert("Doador cadastrado com sucesso!")
}

// Função para listar todos os doadores
function listarDoadores() {
    let lista = "--------------------\n"
    lista += "LISTAGEM DE DOADORES:\n";
    lista += "--------------------\n";
    lista += "NOME | IDADE | PESO | TIPO SANGUÍNEO | ÚLTIMA DOAÇÃO\n";
    lista += "-----------------------------------------------------------------\n";
    for (let doador of doadores) { 
        lista += `${doador.nome}  |  ${doador.idade}  |  ${doador.peso}  |  ${doador.tipoSanguineo}  |  ${doador.ultimaDoacao}\n`;
    }
    lista += "-----------------------------------------------------------------";
    alert(lista);
}

// Função para buscar doadores por tipo sanguíneo
function buscarPorTipoSanguineo() {
    let tipoSanguineoBusca = prompt("Digite o tipo sanguíneo desejado:");
    let resultado = "------------------------\n";
    resultado += "RESULTADO DA BUSCA:\n";
    resultado += "------------------------\n";
    resultado += "NOME\t\t| IDADE | PESO | TIPO SANGUÍNEO | ÚLTIMA DOAÇÃO\n";
    resultado += "-----------------------------------------------------------------\n";
    for (let doador of doadores) {
        if (doador.tipoSanguineo === tipoSanguineoBusca) {
            resultado += `${doador.nome}\t\t|  ${doador.idade}\t|  ${doador.peso}\t|  ${doador.tipoSanguineo}\t\t|  ${doador.ultimaDoacao}\n`;
        }
    }
    resultado += "-----------------------------------------------------------------";
    alert(resultado);
}

// Função para buscar doadores por data da última doação
function buscarPorDataUltimaDoacao() {
    let dataBusca = prompt("Digite a data desejada (dd/mm/aaaa):");
    let resultado = "------------------------\n";
    resultado += "RESULTADO DA BUSCA:\n";
    resultado += "------------------------\n";
    resultado += "NOME\t\t| IDADE | PESO | TIPO SANGUÍNEO | ÚLTIMA DOAÇÃO\n";
    resultado += "-----------------------------------------------------------------\n";
    for (let doador of doadores) {
        // Convertendo a string de data para o formato de data do JavaScript para comparação
        let dataDoador = new Date(doador.ultimaDoacao.split('/').reverse().join('/'));
        let dataBuscaFormatada = new Date(dataBusca.split('/').reverse().join('/'));
        if (dataDoador < dataBuscaFormatada) {
            resultado += `${doador.nome}\t\t|  ${doador.idade}\t|  ${doador.peso}\t|  ${doador.tipoSanguineo}\t\t|  ${doador.ultimaDoacao}\n`;
        }
    }
    resultado += "-----------------------------------------------------------------";
    alert(resultado);
}

// Função principal que exibe o menu e executa as opções escolhidas pelo usuário
function main() {
    let opcao;
    do {
        let menu = "===== SISTEMA DE CADASTRO DE DOADORES DE SANGUE =====\n";
        menu += "1. Cadastrar doador\n";
        menu += "2. Listar doadores\n";
        menu += "3. Buscar doador por tipo sanguíneo\n";
        menu += "4. Buscar doador por data da última doação\n";
        menu += "5. Sair";

        opcao = parseInt(prompt(menu));

        switch (opcao) {
            case 1:
                cadastrarDoador();
                break;
            case 2:
                listarDoadores();
                break;
            case 3:
                buscarPorTipoSanguineo();
                break;
            case 4:
                buscarPorDataUltimaDoacao();
                break;
            case 5:
                alert("Saindo...");
                break;
            default:
                alert("Opção inválida. Por favor, escolha uma opção válida.");
        }
    } while (opcao !== 5);
}

// Chamando a função principal para iniciar o programa
main();