class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|

    t.references :
    t.timestamps

    end
  end
end
