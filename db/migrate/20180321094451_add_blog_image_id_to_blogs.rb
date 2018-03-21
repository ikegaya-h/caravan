class AddBlogImageIdToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :blog_image_id, :tex
  end
end
