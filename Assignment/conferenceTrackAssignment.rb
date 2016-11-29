arr = IO.readlines("/home/webwerks1/Desktop/Training/rubyAssignment/Assignment/testInput")

file=[]
arr.each do |x|
	a=x.gsub(/lightning/,'05min')
	file.push(a)
end 
sortedarray = file.sort_by { |x| -x[/\d+/].to_i }
puts sortedarray
#sortedarray2=sortedarray.shuffle
track1=[]
sum = 0
time = Time.local(2016,"nov",9,9,0,0)
puts "Track 1:"
sortedarray.each do |x|
	a=x.gsub(/[^\d+]/,'')
	b=a.to_i
	time_now=time.strftime("%I:%M%p")
	track_now=time_now+" "+x
	track1.push(track_now)
	time+=b*60
	sum+=b
	break if sum>=180 end
puts track1
sum=0
puts "12:00PM Lunch"
i=track1.length
j=arr.length
time = Time.local(2016,"nov",9,13,0,0)
track2=[]
sortedarray[i..j].each do |x|
	a=x.gsub(/[^\d+]/,'')
	b=a.to_i
	time_now=time.strftime("%I:%M%p")
	track_now=time_now+" "+x
	track2.push(track_now)
	time+=b*60
	sum+=b
	break if sum>=210 end
puts track2
time_now=time.strftime("%I:%M%p")
time_fix=Time.local(2016,"nov",9,16,0,0)
time_now1=time_fix.strftime("%I:%M%p")
if(time_now<time_now1)
	puts time_now1+" Networking Event"
else
	puts time.strftime("%I:%M%p")+" Networking Event"
end
k=track2.length
l=k+i
puts "\nTrack2"
sum=0
time = Time.local(2016,"nov",9,9,0,0)
track3=[]
sortedarray[l..j].each do |x|
	a=x.gsub(/[^\d+]/,'')
	b=a.to_i
	time_now=time.strftime("%I:%M%p")
	track_now=time_now+" "+x
	track3.push(track_now)
	time+=b*60
	sum+=b
	break if sum>=180 end
puts track3
m=track3.length
n=m+l
puts "12:00PM Lunch"
sum=0
time = Time.local(2016,"nov",9,13,0,0)
track4=[]
sortedarray[n..j].each do |x|
	a=x.gsub(/[^\d+]/,'')
	b=a.to_i
	time_now=time.strftime("%I:%M%p")
	track_now=time_now+" "+x
	track4.push(track_now)
	time+=b*60
	sum+=b
	break if sum>=240 end
puts track4
if(time_now<time_now1)
	puts time_now1+" Networking Event"
else
	puts time.strftime("%I:%M%p")+" Networking Event"
end

#starttime = (time + 60*60).strftime("%I:%M%p")

#arr[0..3].each do |x|
#puts starttime+" "+x
#end
#lunchtime = Time.local(2016,"nov",9,12,0,0)
#lunch_time = lunchtime.strftime("%I:%M%p")
#puts lunch_time+" Lunch"
#endtime = Time.local(2016,"nov",9,17,0,0)
#puts endtime.strftime("%I:%M%p")+" Networking Event"

