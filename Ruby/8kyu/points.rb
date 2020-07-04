=begin
Our football team finished the championship. The result of each match look like "x:y". Results of all matches are recorded in the collection.

For example: ["3:1", "2:2", "0:1", ...]

Write a function that takes such collection and counts the points of our team in the championship. Rules for counting points for each match:

    if x>y - 3 points
    if x<y - 0 point
    if x=y - 1 point

Notes:

    there are 10 matches in the championship
    0 <= x <= 4
    0 <= y <= 4
=end

#First solution
def points(games)
  games.inject(0) do |sum, n|
    if n[0].to_i > n[2].to_i
      sum + 3
    elsif n[0].to_i == n[2].to_i
      sum + 1
    else
      sum
    end
  end
end

#Better solution
def points(games)
  games.sum { |score| [1, 3, 0][score[0] <=> score[2]] }
end