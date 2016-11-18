class TopicsController < ApplicationController

  def new
    @subject = Subject.find(params[:subject_id])
    @topic = Topic.new
  end

  def show
    @subject = Subject.find(params[:subject_id])
    @topic = Topic.find(params[:id])
    @note = Note.new
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @topic = @subject.topics.create(topic_params)
    redirect_to subject_path(@subject)
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :description)
  end

end
