def tally(votes)
  up_votes = 0
  down_votes = 0
  votes.each do |vote|
    if vote.up_vote
      up_votes += 1
    else
      down_votes += 1
    end
  end
  return up_votes - down_votes
end
