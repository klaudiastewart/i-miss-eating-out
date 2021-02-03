class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes,
              :lunch
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name         = name
    @dishes       = []
    @lunch        = true
  end

  def closing_time(number)
     close = number + @opening_time.to_i
     return "#{close}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @lunch == true
      @opening_time <= '12:00'
    else
      lunch? == false
    end
  end

  def menu_dish_names
    menu_dish_names = []
    @dishes.each do |dish|
      menu_dish_names << dish.upcase
    end
    menu_dish_names
  end

  def announce_closing_time(number)
    announcement = number + @opening_time.to_i
    return "Il Posto will be closing at #{announcement}:00AM"
  end
end
