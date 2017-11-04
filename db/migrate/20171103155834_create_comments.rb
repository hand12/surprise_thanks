class CreateComments < ActiveRecord::Migration[5.1]
  def change
		create_table :comments do |t|
			t.text :text, null: false
			t.references :user
			t.references :surprise_thank

      t.timestamps
    end
  end
end
