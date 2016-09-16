class ChangeCuresColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :cures, :sympton, :symptom
  end
end
