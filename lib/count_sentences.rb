
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
    new = self.split(/[.?!]/)
    newer = []
    new.each do |string|
      newer << string if string != ""
    end
    newer.length
  end

end