# testing-eval.jl
# Ryan Kerr
# testing card-hand evaluation in Julia

# 1=spades, 2=hearts, 3=diamonds, 4=clubs
immutable Card
  val::Int
  suit::Int
end

# populate deck filled with all cards
fulldeck = Card[]
for v in 2:14
  for s in 1:4
#     fulldeck.append(Card(v, s))
    push!(fulldeck, Card(v, s))
  end
end

d = copy(fulldeck)

# removes and returns card from deck
function takecard!(deck::Vector, c::Card)
  for (i, cr) in enumerate(deck)
    if (cr.val == c.val) && (cr.suit == c.suit)
      deleteat!(deck, i)
      return c
    end
  end
  warn("Card not in deck")
end

# easy 2-card hand creation
# TODO: should make thsi work with optional arguments
# to be able to make boards of different sizes
function hand!(d, c1::Card, c2::Card)
  return [takecard!(d, c1), takecard!(d, c2)]
end

h = hand!(d, Card(2,4), Card(7,3))
