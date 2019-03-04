class CreateUsers < ActiveRecord::Migration[5.0]

    def change
      create_table :users do |t|
        t.string :name
        t.string :password
        t.integer :age
        t.integer :weight
        t.string :gender
        t.string :experience_level

      end
  end
end
