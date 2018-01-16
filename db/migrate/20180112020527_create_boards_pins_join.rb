class CreateBoardsPinsJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :boards_pins, id: false do |t|
      t.integer :board_id
      t.integer :pin_id
    end

    add_index :boards_pins, :board_id
    add_index :boards_pins, :pin_id
  end
end
