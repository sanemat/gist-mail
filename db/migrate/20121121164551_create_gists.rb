class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :name
      t.string :url
      t.integer :count

      t.timestamps
    end
  end
end
