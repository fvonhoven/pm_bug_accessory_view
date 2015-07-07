class HomeScreen < PM::TableScreen
  title "Simple Test"
  stylesheet HomeScreenStylesheet

  def on_load
    @hello_world = append!(UILabel, :hello_world)
  end

  def table_data
    # Tried this both with and without enable_interaction.. no dice
    trash = create(UIImageView, :trash_can).enable_interaction.get
    [{
      cells: [
        { title: "I won't work", accessory: {view: trash, action: :delete_something, arguments: {id: 1} }}
      ]
    }]
  end

  def delete_something
    mp "I got to delete something!"
  end
end
