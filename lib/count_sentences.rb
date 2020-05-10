require 'pry'


class String
  
  
  def sentence?
    
   if self.end_with?(".") 
     return true 
   else
     false
   end
  end
  
  
  def question?
    if self.end_with?("?") 
     return true 
   else
     false
   end

  end

  def exclamation?
    if self.end_with?("!") 
     return true 
   else
     false
   end

  end

  def count_sentences
    array = self.split(/[?!.]/)
    count = 0 
    array.each do |word|
      if word.length != 0 
        count += 1 
      end
    end
    count
      
    

  end
end