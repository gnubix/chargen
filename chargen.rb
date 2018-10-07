# dungeon squad character generator
puts "Dungeon Squad Character Generator"+"_"  * 25
puts ' '



# random name from textfile
def namegen
	# assign random line from textfile to variable
	cname = File.readlines('nameslist.txt').sample
	print "Name: "+cname
	hp = 15
	print "Hp: ", hp
end


# randomly assigns character class to skill die

def ctypegen
	puts "Skills:"
	#an array of skills
	$ctype = ['Warrior', 'Wizard', 'Explorer']
	#selects random value and assigns to variable
	$d4 = $ctype.sample
		puts "D4    "+$d4
		#then removes that value to avoid selection in next variable
		$ctype.delete($d4)
	$d8 = $ctype.sample
		puts "D8    "+$d8
		$ctype.delete($d8)
	$d12 = $ctype.sample
		puts "D12   " + $d12
		$ctype.delete($d12)
 
end





def stuffgen
	puts"Stuff:"
	$d6 = File.readlines('d6stuff.txt').sample
	puts "D6: "+$d6
	$d10 = File.readlines('d10stuff.txt').sample
	puts "D10: "+$d10
end

def gp
	$gp = rand(50..100)
	print "GP: ",$gp
end

namegen 
puts"\n"*2
ctypegen
puts"\n"*2
stuffgen
puts"\n"
gp
puts"\n"*2

=begin

print 'Save Character to Database?: '
saveanswer = gets.chomp

case saveanswer 
when 'y',"Y",'yes'
	puts 'okay saving...'

else
	puts 'okay bye!'
end
=end





