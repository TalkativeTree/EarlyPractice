$var_1 = 22 #scope is global
 
class Person
  @@var_2 #score is class Person and instances of Person. 
  VAR_6 = "Ruby" #scope is within the instance of Person.
 
  attr_reader :var_3, :var_4 #scope is the class Person
 
  def initialize(var_5 = VAR_6)#sope is the 
    @var_3="Law of Demeter"  
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end

benny = Person.new

puts $var_1.inspect
# puts benny.var_2.inspect
puts benny.var_3.inspect
puts benny.var_4.inspect
# puts benny.var_5.inspect
# puts benny.var_6.inspect
# puts benny.var_7.inspect
puts benny.var_8.inspect
puts benny.var_9.inspect

