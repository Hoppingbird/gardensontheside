class RemoveZipCodesFromZips < ActiveRecord::Migration
  def change
    remove_column :zips, :zip_codes, :string
  end
end
