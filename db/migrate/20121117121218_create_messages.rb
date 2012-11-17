class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :sender, :null => false
      t.references :recipient, :null => false

      t.text :body

      t.timestamps
    end
  end
end
