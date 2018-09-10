defmodule HelloScenic.Scene.Main do
  use Scenic.Scene
  alias Scenic.Graph

  import Scenic.Primitives
  import Scenic.Components

  def init(_scene_args, _viewport) do
    graph =
      Graph.build()
      |> text("Say what?", id: :say_something, font_size: 22, translate: {20, 80})
      |> button("Say Hello", id: :say_hello_btn, width: 200, height: 100, translate: {20, 180})
      |> push_graph

    {:ok, graph}
  end

  def filter_event({:click, :say_hello_btn}, event, graph) do
    graph =
      graph
      |> Graph.modify(:say_something, &text(&1, "Hello Scenic"))
      |> push_graph()

    {:noreply, graph}
    {:continue, event, graph}
  end
end
