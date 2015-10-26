class AddPictureToProjects < ActiveRecord::Migration
  def change
    add_attachment :projects, :picture
  end
end
