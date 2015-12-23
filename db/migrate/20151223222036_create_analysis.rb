class CreateAnalysis < ActiveRecord::Migration
  def change
    create_table :analysis do |t|
      t.date :date
      t.string :analysis_product

      t.timestamps null: false
    end
  end
end
