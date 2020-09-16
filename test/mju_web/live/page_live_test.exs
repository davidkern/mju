defmodule MJUWeb.PageLiveTest do
  use MJUWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to Making Junk Useful!"
    assert render(page_live) =~ "Welcome to Making Junk Useful!"
  end
end
