class Afford < ActiveRecord::Base
  attr_accessible :annual_income, :monthly_debt, :down_payment, 
                  :property_tax_rate, :home_insurance_rate, :interest_rate, :loan_length,
                  :piti_income_ratio, :total_debt_income_ratio, :rain_months, :cash_buffer,
                  :furnish_allowance, :piti, :total_home_cost, :principal_interest, :prop_insurance,
                  :pmi_needed, :house_monthly_debt, :closing_costs, :rainy_day_fund, :suggested_cash
   
  validates :annual_income, :presence => true 
  validates :monthly_debt, :presence => true 
  validates :down_payment, :presence => true 
  validates :property_tax_rate, :presence => true 
  validates :home_insurance_rate, :presence => true 
  validates :interest_rate, :presence => true 
  validates :loan_length, :presence => true
  validates :piti_income_ratio, :presence => true   
  validates :total_debt_income_ratio, :presence => true 
  validates :rain_months, :presence => true 
  validates :cash_buffer, :presence => true 
  validates :furnish_allowance, :presence => true 
  validates :piti, :presence => true 
  validates :total_home_cost, :presence => true
  validates :principal_interest, :presence => true  
  validates :prop_insurance, :presence => true 
  validates :pmi_needed, :presence => true 
  validates :house_monthly_debt, :presence => true   
  validates :closing_costs, :presence => true 
  validates :rainy_day_fund, :presence => true 
  validates :suggested_cash, :presence => true   

end
