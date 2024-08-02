class CreateWards < ActiveRecord::Migration[7.0]
  def change
    create_table :wards do |t|

      t.timestamps
    end
  end
end
