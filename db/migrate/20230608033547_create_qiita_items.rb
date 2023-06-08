class CreateQiitaItems < ActiveRecord::Migration[7.0]
  def change
    create_table :qiita_items do |t|
      t.string :title
      t.string :url
      t.string :tags
      

      t.timestamps
    end
  end
end
