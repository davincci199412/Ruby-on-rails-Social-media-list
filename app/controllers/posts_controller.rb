=begin
# define post controller class
# --------------------------------------
# @author Phonpanom
# @description  define post controller class
# @version  1.0
# ---------------------------------------
# @last edit 11/04/2017
# @by Phonpanom
=end

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # Show all posts
  # @created: 11/03/2017 by Phonpanom
  #
  def index
    @posts = Post.all
  end

  # Show filtered posts by params
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/04/2017 by Phonpanom
  #
  def list
    if params[:social]
      @posts = Post.search(params[:social],params[:start_at], params[:end_at])
    else
      @posts = Post.all
    end
  end

  # Show posts for specific customer
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/04/2017 by Phonpanom
  #
  def list_customer
    if params[:facebook_id]
      @posts = Post.search_social(params[:facebook_id],params[:tweeter_id])
    else
      @posts = Post.all
    end
  end

  # Show specific post
  # @created: 11/03/2017 by Phonpanom
  #
  def show
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:social, :social_id, :link, :posted_datetime, :post_content)
    end
end
