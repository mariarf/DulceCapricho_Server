class CreateMesadulces < ActiveRecord::Migration[6.0]
  def change
    create_table :mesadulces do |t|

      t.timestamps
    end
  end
end
