require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    str_arr = self.split(" ")
    binding.pry
    num = 0
    str_arr.each do |word|
      num += 1 if word.sentence? || word.question? || word.exclamation?
    end
    num
  end
end