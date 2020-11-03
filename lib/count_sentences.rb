require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else 
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false
    end
  end

  def count_sentences
    # use self
    # split string on all !?., count elements
    self.split(/[.?!]/).reject {|repeat| repeat.size <2}.count
    # splits on .?! and rejects if it ends with a repeated .?! then counts the elements 
    # return number of sentences in a string
    # return 0 if there are no sentences in a string
    # returns the number of sentences in a complex string
  end

end