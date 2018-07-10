class CreateFigureTables < ActiveRecord::Migration
  def change
    create_table :figure_tables do |f|
      f.integer :title_id
      f.integer :figure_id
    end
  end
end
