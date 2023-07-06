class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :description
      t.string :race

      t.timestamps
    end
  end
end
