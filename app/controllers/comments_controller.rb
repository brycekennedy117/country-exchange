class CommentsController < ApplicationController
  include SessionsHelper

  def create
    @country = Country.find(params[:country_id])
    @comment = @country.comments.create(comment_params)
    redirect_to country_path(@country)
  end

  def update
  end

  def destroy
    @country = Country.find(params[:country_id])
    @comment = @country.comments.find(params[:id])
    @comment.destroy
    redirect_to country_path(@country)
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :reply_id, :content)
    end
end
