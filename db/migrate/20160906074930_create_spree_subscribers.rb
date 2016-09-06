class CreateSpreeSubscribers < ActiveRecord::Migration
  def change
    create_table :spree_subscribers do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
