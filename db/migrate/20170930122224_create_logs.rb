class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :port, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true
      t.string :acao, limit: 255

      t.timestamps null: false
    end
  end
end
