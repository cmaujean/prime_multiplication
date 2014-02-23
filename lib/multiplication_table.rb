class MultiplicationTable
  attr_accessor :table_rows

  def initialize(x,y)
    @x_axis = x
    @y_axis = y
    @table_rows = [ x ]
    @y_axis.each do |y_spot|
      row = [y_spot]
      @x_axis.each do |x_spot|
        row << x_spot * y_spot
      end
      @table_rows << row
    end
  end

  def text_table(spaces=5)
    result = " "*(spaces+1) + @table_rows.first.collect{ |n| "%#{spaces}d" % n }.join(" ")
    @table_rows[1..-1].each do |row|
      result += "\n" + row.collect{ |n| "%#{spaces}d" % n }.join(" ")
    end
    result
  end
end