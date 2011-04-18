# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110412170206) do

  create_table "affords", :force => true do |t|
    t.decimal  "annual_income",           :precision => 10, :scale => 2
    t.decimal  "monthly_debt",            :precision => 10, :scale => 2
    t.decimal  "down_payment",            :precision => 10, :scale => 2
    t.decimal  "property_tax_rate",       :precision => 3,  :scale => 2
    t.decimal  "home_insurance_rate",     :precision => 3,  :scale => 2
    t.decimal  "interest_rate",           :precision => 3,  :scale => 2
    t.decimal  "loan_length",             :precision => 2,  :scale => 1
    t.decimal  "piti_income_ratio",       :precision => 2,  :scale => 0
    t.decimal  "total_debt_income_ratio", :precision => 2,  :scale => 0
    t.decimal  "rain_months",             :precision => 5,  :scale => 1
    t.decimal  "cash_buffer",             :precision => 5,  :scale => 2
    t.decimal  "furnish_allowance",       :precision => 10, :scale => 2
    t.decimal  "piti",                    :precision => 10, :scale => 2
    t.decimal  "total_home_cost",         :precision => 20, :scale => 2
    t.decimal  "principal_interest",      :precision => 10, :scale => 2
    t.decimal  "prop_insurance",          :precision => 10, :scale => 2
    t.string   "pmi_needed"
    t.decimal  "house_monthly_debt",      :precision => 10, :scale => 2
    t.decimal  "closing_costs",           :precision => 10, :scale => 2
    t.decimal  "rainy_day_fund",          :precision => 10, :scale => 2
    t.decimal  "suggested_cash",          :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.decimal  "total_home_cost",         :precision => 20, :scale => 2
    t.decimal  "property_tax_rate",       :precision => 3,  :scale => 2
    t.decimal  "home_insurance_rate",     :precision => 3,  :scale => 2
    t.decimal  "loan_length",             :precision => 2,  :scale => 1
    t.decimal  "down_payment",            :precision => 10, :scale => 2
    t.decimal  "annual_income",           :precision => 10, :scale => 2
    t.decimal  "monthly_debt",            :precision => 10, :scale => 2
    t.decimal  "monthly_hoa",             :precision => 10, :scale => 2
    t.decimal  "closing_concession",      :precision => 10, :scale => 2
    t.decimal  "rain_months",             :precision => 5,  :scale => 1
    t.decimal  "cash_buffer",             :precision => 5,  :scale => 2
    t.decimal  "furnish_allowance",       :precision => 10, :scale => 2
    t.string   "mortgage_type"
    t.decimal  "interest_rate",           :precision => 3,  :scale => 2
    t.decimal  "buydwn_amt",              :precision => 10, :scale => 2
    t.string   "pmi_needed"
    t.decimal  "pmi_percentage",          :precision => 3,  :scale => 2
    t.decimal  "monthly_pmi_cost",        :precision => 10, :scale => 2
    t.decimal  "piti",                    :precision => 10, :scale => 2
    t.decimal  "total_home_value",        :precision => 20, :scale => 2
    t.decimal  "principal_interest",      :precision => 10, :scale => 2
    t.decimal  "prop_insurance",          :precision => 10, :scale => 2
    t.decimal  "mortgage_insurance",      :precision => 10, :scale => 2
    t.decimal  "house_monthly_debt",      :precision => 10, :scale => 2
    t.decimal  "closing_costs",           :precision => 10, :scale => 2
    t.decimal  "rainy_day_fund",          :precision => 10, :scale => 2
    t.decimal  "total_debt_income_ratio", :precision => 2,  :scale => 0
    t.decimal  "suggested_cash",          :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
