class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :business_plane_id

      t.timestamps
    end
  end
end
