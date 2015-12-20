class ImagePostsController < ApplicationController
  def show
  end

  def edit
    @image_post = current_user.image_posts.find(params[:id])
  end

  def update
    @image_post = current_user.image_posts.find(params[:id])
      if @image_post.update(image_post_params)
        redirect_to post_path(@image_post), notice: "Post updated!"
      else
        redirect_to edit_image_post_path, notice: "Error updating post."
      end
  end

  def image_post_params
    params.require(:image_post).permit(:title, :url, :user_id)
  end

end
