class UpdateCuresForignKey < ActiveRecord::Migration[5.0]
  def change
    rename_column :cures, :topic_id, :ailment_id
  end
end
