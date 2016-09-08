class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :author
      t.string :image
      t.string :sentence
      t.timestamps
    end
  end
end
