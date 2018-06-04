class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :simplified
      t.string :traditional
      t.string :pinyin
      t.string :nom
      t.string :definition

      t.timestamps
    end
  end
end
