class CreateHospitalNames < ActiveRecord::Migration[7.0]
  def change
    create_table :hospital_names do |t|

      t.timestamps
    end
  end
end
