class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :kana
      t.string :email
      t.string :phone
      t.string :address
      t.text :message

      t.timestamps
    end
  end
end
