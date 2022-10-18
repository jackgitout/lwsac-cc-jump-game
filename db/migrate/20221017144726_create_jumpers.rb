class CreateJumpers < ActiveRecord::Migration[7.0]
  def change
    create_table :jumpers do |t|

      t.timestamps
    end
  end
end
