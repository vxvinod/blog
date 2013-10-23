class CreateBehats < ActiveRecord::Migration
  def change
    create_table :behats do |t|
      t.string :category
      t.string :title
      t.text :content
      t.string :author
      

      t.timestamps
    end
  end
end
