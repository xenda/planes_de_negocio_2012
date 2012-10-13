class CreateEntrepreneurs < ActiveRecord::Migration
  def change
    create_table :entrepreneurs do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :document_type
      t.string :document_number
      t.string :email
      t.string :cellphone
      t.string :address
      t.datetime :born_at
      t.string :password

      t.timestamps
    end
  end
end
