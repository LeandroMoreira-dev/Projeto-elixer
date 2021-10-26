defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
  alias Exlivery.Users.User
  
  def user_factory do
    %User{
      name: "Rafael",
      email: "leandro.moreira07@gmail.com",
      cpf: "12345678",
      age: 27,
      address: "Rua Artur Milano, 123"

    }
  end
def item_factory do
  %Item{
     description: "Pizza de Peperoni",
      category: :pizza,
      quantity: 1,
      unity_price: Decimal.new("35.5")
      
  }

end



end