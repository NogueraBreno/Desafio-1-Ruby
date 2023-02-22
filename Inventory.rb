require_relative 'InventorySystem.rb'
include InventorySystem

opcoes = ['Adicionar Item' , 'Remover Item','Listar Itens','Valor Total', 'Sair']
$itens = [
    #Para efeito de Teste com Arry Hash pronto
    #{name: "Keyboard",price: 30,quantity: 10 },{name: "Mouse",price: 45,quantity: 10 },{name: "Monitor",price: 550,quantity: 5},{name: "HDMI Cable",price: 25,quantity: 15}
]

loop do

    puts "Bem vindo ao Sistema de Estoque da Loja 
    \n As opções disponiveis para utilizar nesse sistema são 
    \n Adicionar Item \n Remover Item \n Listar Itens \n Valor Total \n Sair \n 
    \n Digite abaixo qual opção deseja seguir : \n "
    opcao = gets.chomp
    puts "\nOpção selecionada foi #{opcao}\n"

    break if (opcao == "exit")

case (opcao)
    when opcao = "Adicionar Item" 
            puts "\nQual nome do Item que quer adicionar ?\n"
            item = gets.chomp.to_s
            puts "\nQual valor será adicionado a ele?\n"
            price = gets.to_f
            puts "\nQual a quantidade de #{item} será adicionado?"
            quantity = gets.to_i
            puts "\nAdicionando #{item} ao inventário com o valor de #{price} em #{quantity} unidades.\n"
            add_item(item,price,quantity)
            puts " "
            list_items()
            puts " "
            puts "Voltando ao menu inicial."
            sleep(1.5)
            puts " "
        when opcao = "Remover Item"
            puts "Digite o nome do produto que você quer remover."
            item = gets.chomp.to_s
            remove_item(item)
            puts " "
            puts "Voltando ao menu inicial."
            sleep(1.5)
            puts " "
        when opcao = "Listar Itens"
            puts " "
            list_items()
            puts " "
            puts "Voltando ao menu inicial."
            sleep(1.5)
            puts " "
        when opcao = "Valor Total"
            total_value()
            puts " "
            puts "Voltando ao menu inicial."
            sleep(1.5)
            puts " "

        when opcao = "Sair"
            puts "Encerrando aplicação..."
            sleep(2)
            opcao = "exit"
            exit
        
        else 
        puts "Opção inválida."
        puts ""
        end
end
