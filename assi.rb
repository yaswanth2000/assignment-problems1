class Assi
  def do_1(a,b)
     puts a+b
  end
def do_2(a,b)
    puts a-b
end
def do_3(a,b)
    puts a*b
end
def do_4(a,b)
    puts a/b
end
a1=Assi.new

puts "enter value of x"
x=gets.chomp.to_i
puts "enter value of y"
y=gets.chomp.to_i
puts "enter the reqiured number for proces"
a=gets.chomp.to_i
while a<=4
puts "1 for addition
       2 for subraction
       3 for multiply
       4 for division" 
a=gets.chomp.to_i
  if a==1
   a1.do_1(x,y)
elsif a==2
  a1.do_2(x,y)
elsif a==3
  a1.do_3(x,y)
elsif a==4
a1.do_4(x,y)
end
end
end
