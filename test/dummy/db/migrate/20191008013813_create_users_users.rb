class CreateUsersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
