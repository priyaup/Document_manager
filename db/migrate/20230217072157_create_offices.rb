class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.string :office_name
      t.string :number_of_employees
      t.string :branch

      t.timestamps
    end
  end
end
