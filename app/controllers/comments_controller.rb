class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
    @topic = Topic.find_by(params[:topic_id])
    
    
  def create
     @comment = current_user.comments.new(comment_params)
     @comment.topic_id = params[:topic_id]
     @comment.user_id = current_user.id
     
     
    if @comment.save
      flash[:success] = "コメントしました"
      redirect_to topics_path
    else
      flash[:danger] = "コメントできません"
      render "comment/new"
    end
  end

  private
   def content_params
   params.require(:comment).permit(:content, :topic_id, :user_id)
   end
  end
end


