class CreateMutualFundLists < ActiveRecord::Migration
  def change
    create_table :mutual_fund_lists do |t|
      t.string :raw_ticker_list

      t.timestamps null: false
    end
  end
end
