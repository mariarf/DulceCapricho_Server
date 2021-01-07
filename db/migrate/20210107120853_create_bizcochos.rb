class CreateBizcochos < ActiveRecord::Migration[6.0]
  def change
    create_table :bizcochos do |t|
      t.string:nombre
      t.timestamps
    end
  end
end
