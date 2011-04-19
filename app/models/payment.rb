class Payment < ActiveRecord::Base
  attr_accessible :total_home_cost, :property_tax_rate, :home_insurance_rate, :loan_length, :down_payment,
                  :annual_income, :monthly_debt, :monthly_hoa, :closing_concession, :rain_months, :cash_buffer,
                  :rain_months, :cash_buffer, :furnish_allowance, :mortgage_type, :interest_rate, :buydwn_amt,
                  :pmi_needed, :pmi_percentage, :monthly_pmi_cost, :piti, :total_home_value, :principal_interest, :prop_insurance, :mortgage_insurance,
                  :house_monthly_debt, :closing_costs, :rainy_day_fund, :total_debt_income_ratio, :suggested_cash
                  
#   
#  validates :total_home_cost, :presence => true 
#  validates :property_tax_rate, :presence => true   
#  validates :home_insurance_rate, :presence => true 
#  validates :loan_length, :presence => true   
#  validates :down_payment, :presence => true 
#  validates :annual_income, :presence => true 
#  validates :monthly_debt, :presence => true 
#  validates :monthly_hoa, :presence => true 
#  validates :closing_concession, :presence => true 
#  validates :rain_months, :presence => true 
#  validates :cash_buffer, :presence => true 
#  validates :furnish_allowance, :presence => true 
## validates :mortgage_type

#  validates :interest_rate, :presence => true   
#  validates :buydwn_amt, :presence => true   
#  validates :pmi_needed, :presence => true     
#  validates :pmi_percentage, :presence => true     
#  validates :monthly_pmi_cost, :presence => true  
#   
#  validates :piti, :presence => true 
#  validates :total_home_value, :presence => true    
#  validates :principal_interest, :presence => true  
#  validates :prop_insurance, :presence => true   
#  validates :mortgage_insurance, :presence => true 
#  
#  validates :house_monthly_debt, :presence => true   
#  validates :closing_costs, :presence => true 
#  validates :rainy_day_fund, :presence => true 

#  validates :total_debt_income_ratio, :presence => true
#  validates :suggested_cash, :presence => true 

end
