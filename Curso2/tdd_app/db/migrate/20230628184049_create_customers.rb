class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :smoker
      t.string :phone
      t.string :avatar

      t.timestamps
    end
  end
end
