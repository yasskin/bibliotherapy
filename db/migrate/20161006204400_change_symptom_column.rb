class ChangeSymptomColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :cures, :symptom, :url
  end
end
