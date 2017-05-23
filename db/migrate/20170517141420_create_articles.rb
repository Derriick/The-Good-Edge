class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :description
      t.integer :prix
      t.boolean :archive, default: false

      t.timestamps
    end
  end
end
