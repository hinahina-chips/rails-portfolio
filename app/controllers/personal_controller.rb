class PersonalController < ApplicationController
  # HTTPClientを呼び出す
  require 'qiita_client'

  def index
    qiita_client = QiitaClient.new('4616d863de05ab1d646b9f2e4c5c39ebf5617695')
    @posts = qiita_client.get_my_posts
    @skills = Skill.all
    @careers = Career.all
  end

  def show
  end
end
