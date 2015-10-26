class AddPictureToPeople < ActiveRecord::Migration
  def change
    add_attachment :people, :picture
  end
end
