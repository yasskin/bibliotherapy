class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
