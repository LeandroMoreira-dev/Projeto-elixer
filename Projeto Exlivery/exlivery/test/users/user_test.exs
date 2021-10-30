defmodule Exlivery.Users.UserTest do
   use ExUnit.Case

   alias Exlivery.Users.User

   import Exlivery.Factory

 describe "build/5" do
   test "when all params are valid, return the user" do
     response = User.build(
       "Rua Artur Milano, 123",
       "Rafael",
       "leandro.moreira07@gmail.com",
       "12345678",
       27
       )


       expected_response =
       {:ok,
        build(:user)}
       assert response == expected_response
   end

    test "when there are invalid params, returns an error" do

     response = User.build(
       "Rua das bananeiras",
       "Rafael JR",
       "email@email.com",
       "123456789",
       15
       )


       expected_response ={:error, "Invalid Parameters"}
       assert response == expected_response

    end

 end

end
