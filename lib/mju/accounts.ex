defmodule MJU.Accounts do
  @moduledoc """
  The accounts context.
  """

  alias MJU.Accounts.User;

  def list_users do
    [
      %User{id: "1", name: "David", username: "david@mju.io"},
      %User{id: "2", name: "Sedat", username: "sedat@mju.io"},
      %User{id: "3", name: "Friend", username: "friend@example.com"},
      %User{id: "4", name: "Foe", username: "foe@example.com"},
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
