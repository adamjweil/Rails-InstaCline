class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
        t.integer :following_id, foreign_key: true, null: false
        t.integer :follower_id, foreign_key: true, null: false

        t.timestamps
    end
  end
end
