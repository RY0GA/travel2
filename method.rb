def disp_plans(plans)
  #プランと料金の表示
  plans.each.with_index(FIRST_PLAN_NUM) do |plan, i|
    puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
  end
end

def chose_plan(plans)
  #正しい値かどうか判断する処理
  while true
    #プラン番号の選択
    print "プランの番号を選択>"
    select_plan_number = gets.to_i
    break if (FIRST_PLAN_NUM..LAST_PLAN_NUM).include?(select_plan_number)
    puts "#{FIRST_PLAN_NUM}~#{LAST_PLAN_NUM}の番号を入力してください"
  end
  chosen_plan = plans[select_plan_number - FIRST_PLAN_NUM]
end

def decide_num_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}ですね"
  #正しい値かどうか判断する処理
  while true
    #予約人数の確認
    puts "何名で予約されますか？"
    print "人数を入力>"
    num_of_people = gets.to_i
    break if num_of_people >= 1
    puts "1以上の数を入力してください"
  end
  num_of_people
end

def calculate_prices(chosen_plan, num_of_people)
  #合計金額を計算
  total_price = chosen_plan[:price] * num_of_people

  if num_of_people >= DISCOUNT_STANDARD_VALUE
    puts "#{DISCOUNT_STANDARD_VALUE}名以上ですので#{(DISCOUNT_RATE * 100).floor}%割引になります"
    #割引料金の計算
    total_price = (total_price * AFTER_DISCOUNT_RATE).floor
  end
  puts "合計金額は#{total_price}円になります。"
end
