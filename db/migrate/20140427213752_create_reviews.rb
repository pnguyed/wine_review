class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rating
      t.string :location
      t.string :comments
      t.datetime :tasted_on
      t.references :wine, index: true

      t.timestamps
    end
  end
end
