class CreateCures < ActiveRecord::Migration[5.0]
  def change
    create_table :cures do |t|
      t.column :sympton, :string
      t.column :headline, :string
      t.column :therapy, :string
      t.column :topic_id, :integer
      t.column :author, :string
      t.column :book_title, :string
      t.column :book_cover, :string
      
      t.timestamps
    end
  end
end
