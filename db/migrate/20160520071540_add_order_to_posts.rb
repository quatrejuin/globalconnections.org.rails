class AddOrderToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :order, :Integer
  end
end
