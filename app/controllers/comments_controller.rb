class CommentsController < ApplicationController

  def create
    comment_photo = params.fetch("photo_id")
    comment_user = params.fetch("user_id")
    comment_text = params.fetch("comment_body")

    new_comment = Comment.new
    new_comment.photo_id = comment_photo
    new_comment.author_id = comment_user
    new_comment.body = comment_text

    new_comment.save

    redirect_to("/photos/" + new_comment.photo_id.to_s)
  end

end
