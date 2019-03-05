class CreateUsersTable < ActiveRecord::Migration[5.0]

  def change

    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.integer :weight
      t.string :gender
      t.string :goal
      t.datetime :last_login
    end

  end
end
