class Api::DataController < ApplicationController
    def index
      data = Skill.all
      render json: data
    end
  
    def show
      data = Skill.find(params[:id])
      render json: data
    end
  end