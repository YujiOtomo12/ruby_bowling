scores = [10, 20, 30, 40]

total_score = scores.inject(:+)
puts total_score
# => 100


scores = [10, 20, 30, 40]





game = Bowling.new
game(
    @total_score = 0,
    @scores = [], 
    @temp = []
    )

game.add_score(4)
game(
    @total_score = 0,
    @scores = [], 
    @temp = [4] 
    )

@temp.size == 1
    
game.add_score(5)
game(
    @total_score = 0,
    @scores = [], 
    @temp = [4, 5]
    )
@temp.size == 2
# 1フレーム完了
# @scores は [[4, 5]] となる
@scores = [[4, 5]]

@scores.each do |score|
    score.inject(:+)
    # => 9
end


game.add_score(10)
game.add_score(0)
# ストライクで1フレーム完了
# @scores は [[4, 5], [10, 0]] となる

game.add_score(3)
game.add_score(6)
# 1フレーム完了
# @scores は [[4, 5], [10, 0], [3, 6]] となる


@scores = [[4, 5], [0, 10], [3, 6]]

scores[1]

index_num = [1, 2, 3]

def calc_score
    @scores.each.with_index(1) do |score, index_num|

        score = [0, 10] 1番目の配列
        index_num = 2
      # 最終フレーム以外でのスペアなら、スコアにボーナスを含めて合計する
      if (score.inject(:+) == 10) && (index_num < 10)
        @total_score += 10 + @scores[index_num].first
      else
        @total_score += score.inject(:+)
      end
    end
  end

  