# frozen_string_literal: true

class ClassicSingletonClass
  private_class_method :new

  @instance = nil

  def self.instance
    @instance ||= new
  end

  def some_method
    puts 'This is a singleton method.'
  end
end

# Or using Rails, oly to declare "include Singleton".
class ClassicSingletonClassTwo
  include Singleton

  def initialize
    some_method
  end

  def some_method
    puts 'This is a singleton method2.'
  end
end

# Usage for two, only replace the class name
singleton_instance1 = SingletonClass.instance
singleton_instance1.some_method

singleton_instance2 = SingletonClass.instance
puts "Are both instances the same? #{singleton_instance1 == singleton_instance2}" # Output: true
