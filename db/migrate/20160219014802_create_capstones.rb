class CreateCapstones < ActiveRecord::Migration
  def change
    create_table :capstones do |t|

      t.timestamps null: false
    end
  end
end
