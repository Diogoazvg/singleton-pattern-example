# frozen_string_literal: true

module SingletonModule
  def self.instance
    @instance ||= new
  end

  def some_method
    puts 'This is a singleton method.'
  end

  private_class_method :new
end

# Or using Rails, oly to declare "include Singleton".
class SingletonModuleTwo
  include Singleton

  def initialize
    some_method
  end

  def some_method
    puts 'This is a singleton method2.'
  end
end

# Usage
singleton_instance1 = SingletonModule.instance
singleton_instance1.some_method

singleton_instance2 = SingletonModule.instance
puts "Are both instances the same? #{singleton_instance1 == singleton_instance2}" # Output: true
