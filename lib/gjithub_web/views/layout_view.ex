defmodule GjithubWeb.LayoutView do
  use GjithubWeb, :view

  def org(%{params: %{"org" => org}}), do: org

  def repo(%{params: %{"repo" => repo}}), do: repo

  def pr(%{params: %{"pr" => pr}}), do: pr

end
