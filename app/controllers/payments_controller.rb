class PaymentsController < ApplicationController

  def new
  end
  
  def create
    @payment = Payment.new(params[:payment])
    @yearly = @payment.interest_rate / 1200
    @length = @payment.loan_length / 12
    @exp =  ((1 + @yearly) ** 30)
    @numerator = (@payment.total_home_cost - @payment.down_payment) * (@yearly * @exp)
    @denominator = (@exp - 1)
    # =(B5-B10)*((B8/1200)*POWER(1+(B8/1200),B9*12))/(POWER(1+(B8/1200),B9*12)-1)
    @payment.principal_interest = @numerator / @denominator
    @payment.prop_insurance = @payment.total_home_cost * (@payment.property_tax_rate + @payment.home_insurance_rate) / 1200
    
    @down_ratio = @payment.down_payment / @payment.total_home_cost
    # If down payment / total home cost is >= 20%
    if @down_ratio >= 0.2
      @payment.pmi_needed = "N"   # pmi is not needed
    else
      @payment.pmi_needed = "Y" # pmi is needed
    end
    
    # Set PMI Percentage
    if @payment.pmi_needed = "N"
      @payment.pmi_percentage = 0
      @payment.monthly_pmi_cost = 0
    elsif (1-@down_ratio) > 0.95
      @payment.pmi_percentage = 90     # 95.01-97.00%	90.00%
    elsif (1-@down_ratio) > 0.9
      @payment.pmi_percentage = 78     # 90.01-95.00%	78.00%
    elsif (1-@down_ratio) > 0.85
      @payment.pmi_percentage = 52     # 85.01-90.00%	52.00%
    else
      @payment.pmi_percentage = 32     # 0.00-85.00%	 32.00%        
    end
    
    # Calculate monthly pmi cost if pmi percentage > 0
    if @payment.pmi_percentage > 0
      @payment.monthly_pmi_cost = @payment.pmi_percentage * (@payment.total_home_value - @payment.down_payment) / 1200
    end
    
    @payment.piti = @payment.principal_interest + @payment.prop_insurance
    @payment.total_home_value = @payment.total_home_cost    
    @payment.house_monthly_debt = @payment.piti + @payment.monthly_pmi_cost + @payment.monthly_debt
    @payment.closing_costs = @payment.total_home_value * 0.02
    @payment.rainy_day_fund = @payment.rain_months * (@payment.house_monthly_debt + @payment.cash_buffer)
    @payment.total_debt_income_ratio = 100 * @payment.house_monthly_debt / (@payment.annual_income/12)
    @payment.suggested_cash = @payment.closing_costs + @payment.rainy_day_fund + @payment.furnish_allowance + 
                              @payment.down_payment + @payment.monthly_debt
                              
    if @payment.save
      flash[:success] = "Payments Entry Created!"
      redirect_to payments_path                
#      respond_to do |format|
#        format.js { render 'create', :locals => { :exercise_sets => ExerciseSet.where("routine_id = ?", @exercise_set.routine_id).all } }
#      end
    else
      flash[:notice] = "Payments Entry Failed!"
      redirect_to payments_path          
    end                              
  end
  
  def index
    @title = "Payments By Given Home Cost"
    
  end
  
  def destroy
  end

  def show
    @title = "Payments By Given Home Cost"
    
#    @principal_interest = 
#    @prop_insurance = 
#    @total_home_cost = 
#    @piti = 
#     
  end
  
end
