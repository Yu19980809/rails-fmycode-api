class Api::V1::StoriesController < Api::V1::BaseController
  before_action :set_story, only: [:show]

  def index
    @stories = Story.all
    # render json: @stories
  end

  def show; end

  private

  def set_story
    @story = Story.find(params[:id])
  end
end
