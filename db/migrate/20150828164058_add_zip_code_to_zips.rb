class AddZipCodeToZips < ActiveRecord::Migration
  def change
    add_column :zips, :zip_code, :string, foreign_key: true
  end
end
