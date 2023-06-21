class Api::DataController < ApplicationController
    def index
      skill = Skill.all
      career = Career.all
      qiita = QiitaItem.all
      #render json: { skill: skill, career: career, qiita: qiita }
      data= {skill: skill, career: career, qiita: qiita}
      render json: data
    end

    def show
      skill = Skill.all
      career = Career.all
      qiita = QiitaItem.all
      #render json: { skill: skill, career: career, qiita: qiita }
      data= {skill: skill, career: career, qiita: qiita}
      render json: data
    end
  end