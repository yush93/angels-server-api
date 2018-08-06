class ContentsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  before_action :set_content, only: [:show, :update, :destroy]
  before_action :get_user, only: [:update, :destroy]

  # GET /contents
  def index
    @contents = Content.all

    render json: @contents
  end

  # GET /contents/1
  def show
    render json: @content
  end

  # POST /contents
  def create
    @content = Content.new(content_params)

    if @content.save
      render json: @content, status: :created, location: @content
    else
      render json: @content.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contents/1
  def update
    if(has_permission? @user)
      if @content.update(content_params)
        render json: @content
      else
        render json: @content.errors, status: :unprocessable_entity
      end
    else
      render json: @content.errors, status: :forbidden
    end
  end

  # DELETE /contents/1
  def destroy
    if(has_permission? @user)
      @content.destroy
      render json: @content.errors, status: :ok
    else
      render json: @content.errors, status: :forbidden
    end
  end

  private
    def get_user
      @user = @content.project.user
      #code
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_params
      params.require(:content).permit(:project_id, :title, :ctype)
    end
end
