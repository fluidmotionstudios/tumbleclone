class TextPostsController < ApplicationController
  def show
  end

  def edit
    @text_post = current_user.text_posts.find(params[:id])
  end

  def update
    @text_post = current_user.text_posts.find(params[:id])
      if @text_post.update(text_post_params)
        redirect_to post_path(@text_post), notice: "Post updated!"
      else
        redirect_to edit_text_post_path, notice: "Error updating post."
      end
  end

  def text_post_params
    params.require(:text_post).permit(:title, :body, :type, :user_id)
  end

end
