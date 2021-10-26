defmodule Exlivery.Users.UserTest do
   use ExUnit.Case

   alias Exlivery.Users.User
 
 describe "build/5" do
   test "when all params are valid, return the user" do
     response = User.build(
       "Rua das bananeiras",
       "Rafael",
       "email@email.com",
       "123456789",
       27
       )


       expected_response =
       {:ok,
        %User{
          address: "Rua das bananeiras",
          age: 27,
          cpf: "123456789",
          email: "email@email.com",
          name: "Rafael"
          }}
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