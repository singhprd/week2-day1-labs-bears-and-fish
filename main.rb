require_relative( 'bear_class' )
require_relative( 'fish_class' )
require_relative( 'river_class' )


yogi_bear = Bear.new('yogi', 'grizzly', 'raaar', [])
cindy_bear = Bear.new('cindy', 'brown', 'eeeh', [])
booboo_bear = Bear.new('booboo', 'brown', 'reaarrr', [] )

fish1 = Fish.new('fishy')
fish2 = Fish.new('nemo')
fish3 = Fish.new('swimmer')

esk = River.new([fish1, fish2, fish3], "River Esk")

# make the bears ROAR!
puts "#{yogi_bear.roar}"
sleep(1)
puts "woah it must be #{yogi_bear.name}!"

puts "#{cindy_bear.roar}"
sleep(1)
puts "Oh thats #{cindy_bear.name} now!"

# Yogi goes fishing
sleep(1)
print yogi_bear.name
print " is going fishing in the "
print esk.river_name
puts ""

previous_river_contents = esk.contents_of_river.length
yogi_bear.fish_in_river(esk.contents_of_river)
new_contents_of_river = esk.contents_of_river.length


puts "The river had #{previous_river_contents} fish and now it has #{new_contents_of_river} fish"

if esk.contents_of_river.last == nil
  puts 'no fish left in river. Go home yogi'
else
  carry_on = true
  while carry_on == true
    puts 'the river still has fish!'
    carry_on = true
    puts "should we carry on fishing? (y or n)"
    user_input = gets.chomp
      if user_input == 'n' or esk.contents_of_river.last == nil
        carry_on = false
      else
        carry_on = true
        yogi_bear.fish_in_river(esk.contents_of_river)
      end
  end
  puts "yogi ran out of fish or left the river!"

end






