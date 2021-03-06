# frozen_string_literal: true

# Creating the comments table
class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
