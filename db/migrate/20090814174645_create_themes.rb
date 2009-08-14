class CreateThemes < ActiveRecord::Migration
  def self.up
    create_table :themes do |t|
      t.string :title
      t.string :author
      t.integer :published_year
      t.string :profession_name
      t.string :code_name
      t.string :grade_name
      t.string :area

      t.timestamps
    end
  end

  def self.down
    drop_table :themes
  end
end
