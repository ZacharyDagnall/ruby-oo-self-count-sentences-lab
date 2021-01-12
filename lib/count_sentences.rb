require 'pry'

class String

  def sentence? 
    #because i'm a linguistics geek i'd like to point out that i think what is meant here is "declarative or imperative sentence". Questions are interrogative sentences, but sentences nonetheless.
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    arr = self.split(/[.?!]/) #any of the three delimiters will split the string
    arr.delete("")            #removes any of these which may have been created
                              #by back-to-back delimiters
    arr.length
  end
end