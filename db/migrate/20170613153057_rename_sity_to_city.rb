class RenameSityToCity < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :sity, :city
  end
end
