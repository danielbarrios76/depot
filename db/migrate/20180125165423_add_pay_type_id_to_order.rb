class AddPayTypeIdToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :pay_type_id, :integer
  end
end
