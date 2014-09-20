class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :namalengkap
      t.string :npm

      t.timestamps
    end
  end
end
