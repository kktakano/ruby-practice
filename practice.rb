
def police_trouble(a,b)
  if a == true && b == true or a == false && b == false
    puts "true"
  else
    puts "false"
  end
end

suspect_a = false
suspect_b = false
police_trouble(suspect_a,suspect_b)