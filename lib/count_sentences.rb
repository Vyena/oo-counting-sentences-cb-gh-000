require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?") == true
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!") == true
      return true
    else
      return false
    end
  end

  def count_sentences
    split = self.split(/[.?!]/)
    split.delete("")
    split.count
  end
end

"This is a string! It has three sentences. Right?".count_sentences
