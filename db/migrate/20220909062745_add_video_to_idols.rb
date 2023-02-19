class AddVideoToIdols < ActiveRecord::Migration[6.1]
  def change
    add_column :idols, :video, :string
  end
end
