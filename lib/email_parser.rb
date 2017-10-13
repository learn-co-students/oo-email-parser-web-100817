require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails, :parsed_emails
  def initialize(emails)
    @emails = emails
    @parsed_emails = []
  end

  def parse
    self.emails.tr(","," ").split(" ").each do |word|
      self.parsed_emails << word if !self.parsed_emails.include?(word)
    end
    parsed_emails
  end
end
