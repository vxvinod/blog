class CreateScaffolds < ActiveRecord::Migration
  def change
    create_table :scaffolds do |t|
      t.string :Behat
      t.string :category
      t.string :title
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
