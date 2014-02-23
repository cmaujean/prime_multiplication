class TextTable
  def initialize(rows)
    @rows = rows
  end

  def self.parse(text)
    raw_rows = text.split("\n")
    return self.new(raw_rows.map{|r| r.strip.split(/\s+/) })
  end

  def row(n)
    if @rows[n]
      @row = Row.new(@rows[n])
    end
  end

  class Row
    def initialize(row)
      @row = row
    end

    def column(n)
      @row[n]
    end
  end
end