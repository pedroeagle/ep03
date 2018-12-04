class AddEspecialitiesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :java, :boolean
    add_column :users, :python, :boolean
    add_column :users, :c, :boolean
    add_column :users, :graduation, :string
    end
end
