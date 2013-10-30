class Game

  def score(something)
    scores_array = something
    total_score = 0
    bonus = 0
    perfect_game = []
    perfect_game = scores_array.select {|x| x != 10}
    if perfect_game == []
      return total_score = 300
    end
    scores_array.each_with_index do |x, i| 
      if x == 10
        bonus += scores_array[i+1] + scores_array[i+2]
      end
      if i < 9 && scores_array[i] + scores_array[i+1] == 10 
        bonus += scores_array[i+2]
      end
      total_score += x  
    end
    total_score + bonus
  end
end
