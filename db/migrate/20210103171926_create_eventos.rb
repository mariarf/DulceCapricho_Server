class CreateEventos < ActiveRecord::Migration[6.0]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :img
      t.timestamps
    end
  end
end
