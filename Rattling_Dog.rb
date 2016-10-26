# require 'activesupport'  
puts <<EOL
	The song 'Rattling Dog'

EOL
def write grand, parent, child
	initial = false
	initial = true if parent == 'bog'
	puts (initial ? ('Now in the '+ parent) : ('And on that ' + parent)) + ' there was a '+ child + ','
	puts 'A rare ' + child + ", a rattlin' " + child + ','
	puts 'The ' +child + ' in the ' + parent +',' if initial
	puts 'The ' + child +' on the ' + parent +', and the ' + parent + ' in the ' + grand + ',' unless initial
	puts 'And the bog down in the valley-o.'

end
(1..5).each do |i|
	if i == 2
		write('', 'bog', 'tree')
	elsif i == 4
		write('bog', 'tree', 'branch')
	else
		(1..2).each do |j|
			puts "Hi ho, the rattlin' bog,"
			puts "The bog down in the valley-o" + (j % 2 ? ',' : '.')
		end
	end
	puts "\n"
end