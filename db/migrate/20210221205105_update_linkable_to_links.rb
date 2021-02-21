class UpdateLinkableToLinks < ActiveRecord::Migration[5.2]
  def change
    remove_column :links, :type
    add_column :links, :format, :string
  end
end
