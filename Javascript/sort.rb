class Person
  attr_reader :age, :name
  def initialize(name, age)
    @name = name
    @age = age
  end
end

chris = Person.new("Chris", 21)
erica = Person.new("Erica", 24)
cindy = Person.new("Cindy", 13)

people = [chris, erica, cindy]

def sort_people(people, comparer)
  people.sort do |x,y|
    comparer.call(x) <=> comparer.call(y)
  end
end

grab_age = lambda do |person|
  person.age
end



sorted_people = sort_people(people, lambda { |person| person.name})
puts sorted_people.inspect


