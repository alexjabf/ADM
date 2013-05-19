class CreateExpositionCenters < ActiveRecord::Migration
  def change
    create_table :exposition_centers do |t|
      t.string :title

      t.timestamps
    end
  end
end
