print "List all Amicable numbers less than 10000\n"
arr=Array.new
for i in 1..10000
	sum=sum2=0
	for n in 1..i/2
		if i%n==0 then sum=sum+n end
	end
	for n in 1..sum/2
		if sum%n==0 then sum2=sum2+n end
	end
	unless arr.include?sum2 then
		if sum2!=sum && sum2==i then 
			print "_ #{i} and #{sum}\n" 
			arr.insert(i,sum)
		end
	end
end
