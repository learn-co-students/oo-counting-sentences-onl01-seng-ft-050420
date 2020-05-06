require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    array = self.gsub("?", ".").gsub("!", ".").split(".")
    return array.count {|x| x != ""}
  end
end