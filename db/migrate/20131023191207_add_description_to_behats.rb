class AddDescriptionToBehats < ActiveRecord::Migration
  def change
    add_column :behats, :description, :text
  end
end
