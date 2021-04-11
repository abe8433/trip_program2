def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(FIRST_PLAN_NUM) do |plan,i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (FIRST_PLAN_NUM..LAST_PLAN_NUM).include?(select_plan_num)
      puts "#{FIRST_PLAN_NUM}〜#{LAST_PLAN_NUM}の番号を入力して下さい。"
  end
  chosen_plan_index = select_plan_num - FIRST_PLAN_NUM
  plans[chosen_plan_index]
end

def decide_number_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。\n何名で予約されますか？"
  while true
    print "人数を入力 > "
    number_of_people = gets.to_i
    break if number_of_people >= 1
      puts "1以上を入力して下さい。"
  end
  number_of_people
end

def calculate_charges(chosen_plan, number_of_people)
  puts "#{number_of_people}名ですね"
  total_price = chosen_plan[:price] * number_of_people
  if number_of_people >= DISCOUNT_STANDARD_VALUE
    puts "#{DISCOUNT_STANDARD_VALUE}名以上なので#{(DISCOUNT_RATE*100).floor}%割引となります"
    total_price *= AFTER_DISCOUNT_RATE 
  end
  puts "合計金額は#{total_price.floor}円になります。"
end