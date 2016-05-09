class CreateMutualFundLists < ActiveRecord::Migration
  def change
    create_table :mutual_fund_lists do |t|
      t.string :cat_name
      t.float :one_month_perc
      t.float :year_to_date_perc
      t.float :three_month_perc
      t.float :one_year_perc
      t.float :three_year_perc
      t.float :five_year_perc

      t.timestamps null: false
    end
  end
end
