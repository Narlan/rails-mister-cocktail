class ChangeCocktailPictureToPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :cocktails, :picture, :photo
  end
end
