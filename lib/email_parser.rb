require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def parse
    self.data.split(/[\s,]+/).uniq
  end
end
