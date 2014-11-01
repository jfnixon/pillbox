class AddScheduleAttributesToPrescription < ActiveRecord::Migration
  def change
    add_column :prescriptions, :is_all_day, :boolean
    add_column :prescriptions, :from_date, :date
    add_column :prescriptions, :from_time, :time
    add_column :prescriptions, :to_date, :date
    add_column :prescriptions, :to_time, :time
    add_column :prescriptions, :repeats, :integer
    add_column :prescriptions, :repeats_every_n_days, :integer
    add_column :prescriptions, :repeats_every_n_weeks, :integer
    add_column :prescriptions, :repeats_weekly_each_days_of_the_week_mask, :integer
    add_column :prescriptions, :repeats_every_n_months, :integer
    add_column :prescriptions, :repeats_monthly, :string
    add_column :prescriptions, :repeats_monthly_each_days_of_the_month_mask, :integer
    add_column :prescriptions, :repeats_monthly_on_ordinals_mask, :integer
    add_column :prescriptions, :repeats_monthly_on_days_of_the_week_mask, :integer
    add_column :prescriptions, :repeats_every_n_years, :integer
    add_column :prescriptions, :repeats_yearly_each_months_of_the_year_mask, :integer
    add_column :prescriptions, :repeats_yearly_on, :boolean
    add_column :prescriptions, :repeats_yearly_on_ordinals_mask, :integer
    add_column :prescriptions, :repeats_yearly_on_days_of_the_week_mask, :integer
    add_column :prescriptions, :repeat_ends, :string
    add_column :prescriptions, :repeat_ends_on, :date
    add_column :prescriptions, :time_zone, :string
  end
end
