def line(customers)
  if customers.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def take_a_number(customers, name)
  customers << name
  puts "Welcome, #{name}. You are number #{customers.length} in line."
end

def now_serving(customers)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers.first}."
    customers.shift
  end
end