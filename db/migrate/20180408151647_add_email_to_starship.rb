class AddEmailToStarship < ActiveRecord::Migration[5.1]
  def change
    add_column :starships, :email, :string
  end
end
