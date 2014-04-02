class TopicsController < ApplicationController
  before_filter :authorize!
  
  def index
    @topics = Topic.all
  end
  def show
    @topic = Topic.find(params[:id])
  end
  def new
    @topic = Topic.new
  end
  def create
    @topic = Topic.new(topic_params)
    @topic.user = current_user
    if @topic.save
      flash[:notice] = "Your topic was created successfully. Here's the page for it."
      redirect_to topics_path(@topic)
    else
      flash[:alert] = "There was a problem saving your topic. Please try again."
      redirect_to :back
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end