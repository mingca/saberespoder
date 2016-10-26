# require 'activesupport'  
puts <<EOL
	HELP:
	q : quit
	n : generate new robot name
	l : show the list of robots
EOL
$list = []
def isduplicate new
	$list.include? new
end
def generate
	alpha_range = [('A'..'Z')].map{ |i| i.to_a }.flatten
	alpha = (0...2).map{ alpha_range[rand(alpha_range.length)] }.join
	num_range = [('0'..'9')].map{ |i| i.to_a }.flatten
	num = (0...3).map{ num_range[rand(num_range.length)] }.join
	result = alpha+num
	if isduplicate result
		result = generate
	else
		$list << result
		return result 
	end
end

while(input = gets) do
  	case input.chomp
  	when 'q'
  		break
  	when 'n'
  		puts generate
  	when 'l'
  		puts $list
  	else 
  	end
end
