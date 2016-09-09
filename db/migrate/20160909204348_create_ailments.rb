class CreateAilments < ActiveRecord::Migration[5.0]
  def change
    create_table :ailments do |t|
      t.column :description, :string
      t.column :topic_id, :integer

      t.timestamps
    end
  end
end
