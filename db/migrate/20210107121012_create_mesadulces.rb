class CreateMesadulces < ActiveRecord::Migration[6.0]
  def change
    create_table :mesadulces do |t|
      t.string:nombre
      t.timestamps
    end
  end
end
