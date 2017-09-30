class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.string :ip, limit: 255
      t.string :description, limit: 1024

      t.timestamps null: false
    end
  end
end
