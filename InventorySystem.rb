module InventorySystem


def add_item(item,price,quantity)
    precoItem = {name:"#{item}",price:price,quantity: quantity}
    $itens.push (precoItem)
    puts "#{item} adicionado no valor de #{price}"
end

def remove_item(item)    
    if $itens.any?{|key| key[:name] == item}
    $itens.delete_if { |key| key[:name] == item }
    puts "#{item} removido"
    else
    puts "#{item} não encontrado na lista, abaixo segue o inventário : "
    list_items()
    end
end


def  list_items
    if $itens.empty?
    puts "O inventário está vázio."
    else
    puts "Itens atualmente no inventário são: "
    puts $itens
    end
end

def total_value
    @values = []
    $itens.each do |value|
        iValue = value[:price]
        iQuantity = value[:quantity]
        iUnitValue = iValue * iQuantity
        @values.push (iUnitValue)
    end
    vTotal = @values.sum

puts "O valor total dos itens registrados em inventário é #{vTotal}"
end

end