defmodule Exlivery.Factory do
  use ExMachina
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
end