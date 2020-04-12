class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string   :name,  null: false
      t.string   :email
      t.string   :title, null: false
      t.text     :text,  null: false
      t.integer  :color
      t.string   :url
      t.string   :password_digest
      t.timestamps
    end
  end
end
