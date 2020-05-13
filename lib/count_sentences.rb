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
    #find how to split the sentences into seperate element in an array with three arguments ( . ? !)
    self.split(/[\.?!]/).delete_if { |e| e.length == 0}.length
  end
end

# stringy = "I am trying to learn split. It is not easy. What do you think? I will get it though!"
#
# #delete empty spaces in array
# value = "cat,,dog,bird"
# elements = value.split(",")
# print elements, "\n"
#
# # Remove empty elements from the array.
# elements.delete_if{|e| e.length == 0}
# print elements
