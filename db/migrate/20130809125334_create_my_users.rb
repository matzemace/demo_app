class CreateMyUsers < ActiveRecord::Migration
  def change
    create_table :my_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
