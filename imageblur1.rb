#COMPLETE

class Image

  def initialize(list_of_numbers)
    @list_of_numbers = list_of_numbers
  end 

  def output_image
    @list_of_numbers.each do |row|
      puts row.join
    end
  end 
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image

# 0000
# 0100
# 0001
# 0000