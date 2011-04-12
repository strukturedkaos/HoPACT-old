class CreateAffords < ActiveRecord::Migration
  def self.up
    create_table :affords do |t|
      t.decimal :annual_income, :precision => 10, :scale => 2
      t.decimal :monthly_debt, :precision => 10, :scale => 2
      t.decimal :down_payment, :precision => 10, :scale => 2    
      t.decimal :property_tax_rate, :precision => 3, :scale => 2    
      t.decimal :home_insurance_rate, :precision => 3, :scale => 2
      t.decimal :interest_rate, :precision => 3, :scale => 2                
      t.decimal :loan_length, :precision => 2, :scale => 1    
      t.decimal :piti_income_ratio, :precision => 2, :scale => 0                      
      t.decimal :total_debt_income_ratio, :precision => 2, :scale => 0
      t.decimal :rain_months, :precision => 5, :scale => 1
      t.decimal :cash_buffer, :precision => 5, :scale => 2
      t.decimal :furnish_allowance, :precision => 10, :scale => 2
      t.decimal :piti, :precision => 10, :scale => 2    
      t.decimal :total_home_cost, :precision => 20, :scale => 2   
      t.decimal :principal_interest, :precision => 10, :scale => 2         
      t.decimal :prop_insurance, :precision => 10, :scale => 2
      t.string  :pmi_needed
      t.decimal :house_monthly_debt, :precision => 10, :scale => 2      
      t.decimal :closing_costs, :precision => 10, :scale => 2
      t.decimal :rainy_day_fund, :precision => 10, :scale => 2        
      t.decimal :suggested_cash, :precision => 10, :scale => 2      
      t.timestamps
    end
  end

  def self.down
    drop_table :affords
  end
end
