class Image

  def initialize(picture)
    @picture = picture
  end 

  def output_image
    @picture.each do |array|
      array.each do |num|
        print num
      end
      puts
    end
  end 

  def blur
    ones= []
    @picture.each_with_index do |rows, row|
        rows.each_with_index do |num, col|
          ones << [row, col] if num == 1
        end
      end
      ones.each do |row, col|
      @picture[row -1][col]=1 if row -1 >= 0
      @picture[row +1][col]=1 if row +1 < num_rows
      @picture[row][col -1]=1 if col -1 >= 0
      @picture[row][col +1]=1 if col +1 < num_cols
    end
  end
  def num_rows
    @picture.length
  end
  def num_cols
    @picture.length
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image

image.blur
puts 
image.output_image