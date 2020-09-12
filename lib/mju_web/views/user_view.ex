defmodule MJUWeb.UserView do
  use MJUWeb, :view

  alias MJU.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
