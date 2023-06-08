class PersonalController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  # HTTPClientを呼び出す
  require 'qiita_client'
  def new
    @posts = QiitaItem.all
  end
  def index
    qiita_client = QiitaClient.new('4616d863de05ab1d646b9f2e4c5c39ebf5617695')
    items = qiita_client.get_my_posts

    items.each do |item|
      tags = item['tags'].map { |tag| tag['name'] }.join(',')
      qiita_item = QiitaItem.find_or_initialize_by(title: item['title'], url: item['url'])
      qiita_item.tags = tags
      qiita_item.save
    end
    
    # TODO 画像入れる
    @posts = QiitaItem.all
    @skills = Skill.all
    @careers = Career.all
  end

  def edit
    @qiita_item = QiitaItem.find(params[:id])
  end

  def update
    @qiita_item = QiitaItem.find(params[:id])
    @qiita_item.update(qiita_item_params)
    redirect_to personal_index_path
  end
  
  private

  def qiita_item_params
    params.require(:qiita_item).permit(:title, :url, :image)
  end
end
