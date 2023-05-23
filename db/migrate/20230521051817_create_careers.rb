class CreateCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.datetime :day
      t.text :description
      t.timestamps
    end
  end
end
