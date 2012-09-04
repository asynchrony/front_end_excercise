class CreateProfiles < ActiveRecord::Migration
  def up
    create_table :profiles do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :gender
      t.string :income
      t.date :date_of_birth

      t.timestamps
    end
  end

  def down
    drop_table :profiles
  end
end
