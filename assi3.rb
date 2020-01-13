class Stu
attr_accessor :name ,:rnum ,:state ,:branch ,:cgpa
def initialize(rnum=0,name=nil,state=nil,branch=0,cgpa=0)
   @rnum=rnum
    @name=name
    @state=state
   @branch=branch
    @cgpa=cgpa
   end
    def display
       puts "name : #{@name}"
       puts "rollnum : #{@rnum}"
       puts "state : #{@state}"
       puts "branch : #{@branch}"
        puts "cgpa : #{@cgpa}"
      end
end
puts "1.add student"
puts "2.dispay all students"
puts "3.display students by branch"
puts "4.dislay  students by state"
puts "5.search student by roll number"
puts "6.search by part of name"
puts "7.delete by roll number"
puts "8.count and display numberof students by state"
puts "9.count and display number of students by branch"
puts "10.exit"
s=Array.new
begin
puts "enter your choice"
ch=gets.chomp.to_i
case ch
   when 1
     puts "enter student details:"
     puts"enter roll number"
     rollno=gets.chomp.to_i
     puts"enter name:"
     name=gets.chomp
     puts"enter state:"
     state=gets.chomp
     puts"enter branch"
     branch=gets.chomp
     puts"enter cgpa:"
     cgpa=gets.chomp.to_i
     x=Stu.new(rollno,name,state,branch,cgpa)
     s.push(x)
     puts"student details added succesfully"
   when 2
     stuno=1
     for i in s
       puts "student "+stuno.to_s
       i.display
        stuno=stuno+1
     end
    when 3
       puts "enter branch:"
       b=gets.chomp
       c=Array.new
        for i in s
           if(i.branch==b)
              c.push(i)
             end
         end
        if(!c.empty?)
         stuno=1
         for i in c
            puts "student "+stuno.to_s
           i.display
           stuno=stuno+1
          end
         else
         puts "branch not found"
         end
     when 4
        puts "enter state"
        b=gets.chomp
        c=Array.new
        stuno=1
          for i in s
           if(i.state==b)
              c.push(i)
             end
         end
        if(!c.empty?)
         stuno=1
         for i in c
            puts "student "+stuno.to_s
           i.display
           stuno=stuno+1
          end
         else
         puts"state not found"
         end
    when 5
          puts "enter roll number"
        b=gets.chomp.to_i
        c=Array.new
        stuno=1
          for i in s
           if(i.rnum==b)
              c.push(i)
             end
         end
        if(!c.empty?)
         stuno=1
         for i in c
            puts "student "+stuno.to_s
           i.display
           stuno=stuno+1
          end
         else
         puts"roll number not found"
         end
    when 6
  puts "enter part of name"
        b=gets.chomp
        c=Array.new
        stuno=1
          for i in s
           if(i.name.include?(b))
              c.push(i)
             end
         end
        if(!c.empty?)
         stuno=1
         for i in c
            puts "student "+stuno.to_s
           i.display
           stuno=stuno+1
          end
         else
         puts"name not found"
         end
    when 7
           puts "enter rollno"
        b=gets.chomp
        c=Array.new
        stuno=1
          for i in s
           if(i.rnum==b)
              c.push(i)
             end
         end
        if(!c.empty?)
         stuno=1
         for i in c
            s.delete(i)
          end
           puts"deletion successful"
         else
         puts "roll number not found"
         end
    when 8
       c=Array.new(0)
       for i in s
            c.push(i.state)
            count=c.each_with_object(Hash.new(0)) do |e,total|
            total[e] +=1
            end
        end
        puts "count"+count
     when 9
        c=Array.new(0)
        for i in s
           c.push(i.branch)
           count=c.each_with_object(Hash.new(0)) do |e, total|
           total[e]+=1
         end
       end
       puts "count"+count
     when 10
         puts "Invalid choice"
     end
end while(ch!=10)
