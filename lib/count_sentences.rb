require 'pry'

class String

  def sentence?
    self.split(" ").any?{|words| words.end_with?(".")}
  end

  def question?
    self.split(" ").any? {|words| words.end_with?("?")}
  end

  def exclamation?
    self.split(" ").any? {|words| words.end_with?("!")}
  end

  def count_sentences
    self.split(" ").collect.count do |words|
      words.end_with?(".", "!", "?")
    end 
  end
end