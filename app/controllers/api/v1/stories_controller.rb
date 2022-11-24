class Api::V1::StoriesController < Api::V1::BaseController
  before_action :set_story, only: [:show]

  def index
    @stories = Story.all
    # render json: @stories
  end

  def show; end

  def create
    @story = Story.new(story_params);
    if @story.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :content, :picture_url)
  end
end
