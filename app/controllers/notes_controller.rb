class NotesController < ApplicationController

  def new
    @subject = Subject.find(params[:subject_id])
    @topic = Topic.find(params[:topic_id])
    @note = Note.new
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @topic = Topic.find(params[:topic_id])
    @note = @topic.notes.create(note_params)
    redirect_to subject_topic_path(@subject, @topic)
  end

  private

  def note_params
    params.require(:note).permit(:information, :title, :url)
  end

end
