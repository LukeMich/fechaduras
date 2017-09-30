class CreatePermitions < ActiveRecord::Migration
  def change
    create_table :permitions do |t|
      t.references :port, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
