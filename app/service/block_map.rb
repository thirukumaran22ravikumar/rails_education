

# example_controller  in controller (yield instance created ) 

# routes created http://localhost:3000/example    methord "some_action"

# call rails s 



class BlockMap

  def self.callMap

    array = [1,2,3,4,5,6]
    after_map = array.map{|x| x*2}
    puts array.inspect+"-----original array doesnot change "
    p after_map.to_s+"-----------------changed array"
  end

  def self.callEach
    numbers = [1, 2, 3, 4, 5]
    numbers.each { |num| puts num * 2 }  # Output: 2, 4, 6, 8, 10
  end

  def self.callSelect
    numbers = [1, 2, 3, 4, 5]
    even_numbers = numbers.select { |num| num.even? }
    puts even_numbers.inspect  # Output: [2, 4]

  end

  def self.callReduce
    numbers = [1, 2, 3, 4, 5]
    sum = numbers.reduce(0) { |acc, num| acc + num }
    puts sum  # Output: 15

  end
  
  def self.callFind
    numbers = [1, 2, 3, 4, 5]
    result = numbers.find { |num| num > 3 }
    puts result  # Output: 4

  end

  def self.callInject
    numbers = [1, 2, 3, 4, 5]

    sum = numbers.inject(0) do |total, num| 
      total + num 
      
    end
    puts sum 
  end


  def self.callCollect
    students = [
      { name: 'Alice', grade: 'A' },
      { name: 'Bob', grade: 'B' },
      { name: 'Charlie', grade: 'C' }
    ]

    names = students.collect { |student| student[:name] }
    puts names.inspect  # Output: ["Alice", "Bob", "Charlie"]

  end



end


