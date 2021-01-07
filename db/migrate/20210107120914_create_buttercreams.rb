class CreateButtercreams < ActiveRecord::Migration[6.0]
  def change
    create_table :buttercreams do |t|

      t.timestamps
    end
  end
end
