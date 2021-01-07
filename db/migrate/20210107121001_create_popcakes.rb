class CreatePopcakes < ActiveRecord::Migration[6.0]
  def change
    create_table :popcakes do |t|

      t.timestamps
    end
  end
end
