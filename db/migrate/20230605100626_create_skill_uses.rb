class CreateSkillUses < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_uses do |t|
      t.text :title
      t.timestamps
    end
  end
end
