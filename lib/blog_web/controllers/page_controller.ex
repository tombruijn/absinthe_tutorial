defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  def index(conn, _) do
    Blog.Repo.all(Blog.Content.Post)
    render conn, "index.html"
  end
end
