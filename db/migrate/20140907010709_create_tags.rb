class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tagger
      t.string :tagtext
      t.references :name, index: true

      t.timestamps
    end
  end
end
