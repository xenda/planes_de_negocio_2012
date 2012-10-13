class AddEntrepreneurIdToBusinessPlanes < ActiveRecord::Migration
  def change
    add_column :business_planes, :entrepreneur_id, :integer
  end
end
