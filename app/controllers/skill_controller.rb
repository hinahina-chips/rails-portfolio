class SkillController < ApplicationController

  def create
    @skill = Skill.new(skill_params)
    @skill.save
    redirect_to skill_index_path
  end

  def index
    @skill = Skill.new
    @skills = Skill.all
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill =  Skill.find(params[:id])
    @skill.update(skill_params)
    redirect_to skill_index_path
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skill_index_path
  end

  private

  def skill_params
    params.require(:skill).permit(:skill, :achieve)
  end
end
