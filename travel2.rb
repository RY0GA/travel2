require "./method.rb"

plans = [
  { place: "沖縄旅行", price: 10000 },
  { place: "北海道旅行", price: 20000 },
  { place: "九州旅行", price: 15000 }
]

#定数の定義
FIRST_PLAN_NUM = 1
LAST_PLAN_NUM = (FIRST_PLAN_NUM + plans.size) - 1
DISCOUNT_STANDARD_VALUE = 5
DISCOUNT_RATE = 0.1
AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE

#メソッドの呼び出し
disp_plans(plans)
chosen_plan = chose_plan(plans)
num_of_people = decide_num_of_people(chosen_plan)
calculate_prices(chosen_plan, num_of_people)
