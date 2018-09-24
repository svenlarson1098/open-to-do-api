class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.references :list, foreign_key: true
      t.boolean :complete

      t.timestamps
    end
  end
end
