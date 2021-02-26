class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :spelling
      t.string :pos
      t.string :definition
      t.string :sentences

      t.timestamps
    end
  end
end
