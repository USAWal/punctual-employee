class CreateNotches < ActiveRecord::Migration
  def change
    create_table :notches do |t|
      t.datetime :notched_up_at
    end
  end
end
