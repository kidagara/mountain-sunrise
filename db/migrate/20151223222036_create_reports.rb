class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :date
      t.string :analysis_product

      t.timestamps null: false
    end
  end
end
