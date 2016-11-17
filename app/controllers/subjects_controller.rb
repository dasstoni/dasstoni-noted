class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
    @subject = Subject.new
  end

  def new
    @subject = Subject.new
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.create(subject_params)
    redirect_to subjects_path
  end

  private

  def subject_params
    params.require(:subject).permit(:title)
  end

end
