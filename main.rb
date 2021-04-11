require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

FIRST_PLAN_NUM = 1
LAST_PLAN_NUM = (FIRST_PLAN_NUM + plans.size) -1
DISCOUNT_STANDARD_VALUE = 5
DISCOUNT_RATE = 0.1
AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE

disp_plans(plans)
chosen_plan = choose_plan(plans)
number_of_people = decide_number_of_people(chosen_plan)
calculate_charges(chosen_plan, number_of_people)