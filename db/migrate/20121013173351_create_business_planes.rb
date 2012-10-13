class CreateBusinessPlanes < ActiveRecord::Migration
  def change
    create_table :business_planes do |t|
      t.string :title, :default => "Some plan"
      t.string :category
      t.text :vision
      t.text :acknowledgment
      t.integer :duration
      t.decimal :total_investment, :scale => 2, :precision => 10
      t.decimal :gross_margin, :scale => 2, :precision => 10
      t.decimal :roi, :scale => 2, :precision => 10
      t.timestamps
    end
  end
end
