require "pry"
require "active_record"

options = {
  adapter: 'postgresql',
  database: 'goodfoodhunting'
}


ActiveRecord::Base.establish_connection(options)

class Dish < ActiveRecord::Base
  attr_accessor :name, :image_url

  def initialize(options)
    @name = options[:name]
    @image_url = options[:image_url]
  end

end

binding.pry

#d1 = Dish.new(name: 'cake', image_url: 'http////sadasd.com')
#d1.name = 'cake'
