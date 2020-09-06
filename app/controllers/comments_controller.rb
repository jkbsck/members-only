class CommentsController < ApplicationController

  # def create
  #   @post = Post.find(params[:post_id])
  #   @comment = @post.comments.create(params[:comment].permit(:comment))
  #   @comment.save
  #   redirect_to post_path(@post)

  #   #@comment.post_id = params[:post_id]
  #   #@comment.user_id = params[:user_id]

  #   #@comment.save

  #   #redirect_to post_path(@comment.post)
  # end

  def create
    @comment = current_user.comments.build(comment_params)

    #@comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    #@comment.user_id = params[:user_id]
    #@comment.id = 22
  
    @comment.save
  
    redirect_to post_path(@comment.post)
  end
  
  def comment_params
    params.require(:comment).permit(:comment)
  end
  
end
