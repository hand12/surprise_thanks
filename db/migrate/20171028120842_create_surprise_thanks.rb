class CreateSurpriseThanks < ActiveRecord::Migration[5.1]
  def change
    create_table :surprise_thanks do |t|
      t.string :title, null: false
			t.string :image
			t.string :dear_name
      t.text :episode

      t.timestamps
    end
  end
end
