# testing-eval.jl
# Ryan Kerr
# testing card-hand evaluation in Julia

# 1=spades, 2=hearts, 3=diamonds, 4=clubs
immutable Card
  val::Int
  suit::Int
end

fulldeck = Any[]
for v in 2:14
  for s in 1:4
#     fulldeck.append(Card(v, s))
    push!(fulldeck, Card(v, s))
  end
end

d = copy(fulldeck)

function takecard!(deck, c::Card)
  for (i, cr) in enumerate(deck)
    if (cr.val == c.val) && (cr.suit == c.suit)
      deleteat!(deck, i)
      return c
    end
  end

#   index = (c.val - 2) * 4 + c.suit
#   deleteat!(deck, index)
#   return c
end

takecard!(d, Card(5,4))
d

hand = [takecard!(d, Card(4, 4)), takecard!(d, Card(4,3))]

