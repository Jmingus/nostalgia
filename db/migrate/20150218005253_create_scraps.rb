class CreateScraps < ActiveRecord::Migration
  def change
    create_table :scraps do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.string :caption, default: 'I dont have a caption yet!'
      t.boolean :favorite, default: false

      t.timestamps null: false
    end
  end
end
