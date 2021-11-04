defmodule Exlivery.Users.CreateOrUpdateTest do
  use ExUnit.Case
  alias Exlivery.Users.Agent, as: UserAgent
  alias Exlivery.Users.CreateOrUpdate


  describe "call/1" do
      setup do
UserAgent.start_link(%{})

:ok
      end


    test "when all params are valid, save the user" do
   params =  %{
      name: "Rafael",
      address: "Rua banana 15",
      email: "rafael@banana.com",
      cpf: "12345678900",
      age: 26
      }

      response = CreateOrUpdate.call(params)

      expected_response = {:ok, "User created or update successfuly"}

      assert response == expected_response

      end


    test "when there are invaid params, returns an error" do

    params =  %{
      name: "Rafael",
      address: "Rua banana 15",
      email: "rafael@banana.com",
      cpf: "12345678900",
      age:10
      }

      response = CreateOrUpdate.call(params)

      expected_response = {:error, "Invalid Parameters"}

      assert response == expected_response
        end


  end
end
