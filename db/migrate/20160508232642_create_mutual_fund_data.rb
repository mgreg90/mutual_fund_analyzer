class CreateMutualFundData < ActiveRecord::Migration
  def change
    create_table :mutual_fund_data do |t|
      t.string :raw_yf_date
      t.string :raw_mstar_data

      t.timestamps null: false
    end
  end
end
