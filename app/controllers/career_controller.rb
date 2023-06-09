class CareerController < ApplicationController
  #before_action :authenticate_user!, only: [:create, :index, :edit]
  def create
    @career = Career.new(career_params)
    @career.save
    redirect_to career_index_path
  end

  def index
    @career = Career.new
    @careers = Career.all
  end

  def edit
    @career = Career.find(params[:id])
  end

  def update
    @career =  Career.find(params[:id])
    @career.update(career_params)
    redirect_to career_index_path
  end

  def destroy
    @career = Career.find(params[:id])
    @career.destroy
    redirect_to career_index_path
  end

  private

  def career_params
    params.require(:career).permit(:day, :description)
  end
end
