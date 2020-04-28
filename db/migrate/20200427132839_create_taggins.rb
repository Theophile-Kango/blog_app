class CreateTaggins < ActiveRecord::Migration[5.2]
  def change
    create_table :taggins do |t|
      t.references :tag, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
