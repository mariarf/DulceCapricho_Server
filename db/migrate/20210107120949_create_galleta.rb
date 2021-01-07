class CreateGalleta < ActiveRecord::Migration[6.0]
  def change
    create_table :galleta do |t|

      t.timestamps
    end
  end
end
