class CreateBusinessPlanes < ActiveRecord::Migration
  def change
    create_table :business_planes do |t|
      t.string :title, :default => "Some plan"
      t.string :category
      t.text :vision
      t.text :acknowledgment
      t.integer :duration
      t.decimal :total_investment, :scale => 10, :precision => 2
      t.decimal :gross_margin, :scale => 10, :precision => 2
      t.decimal :roi, :scale => 10, :precision => 2
      t.timestamps
    end
  end
end
