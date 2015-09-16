class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|

    t.string :description
    t.timestamps
    t.references :user_id

    end
  end
end
