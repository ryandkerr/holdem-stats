# holdem.py
# Ryan Kerr
# interface to interact with texas holdem game

from random import shuffle

class card(object):
    """a card"""
    def __init__(self, val, suit):
        self.val = val
        self.suit = suit
        self.pretty = str(self.val) + self.suit
   
vals = range(2,15)
suits = ["s", "c", "h", "d"]

class deck(object):
    """a deck"""
    def __init__(self):
        self.all_cards = []
        for val in vals:
            for suit in suits:
                c = card(val, suit)
                self.all_cards.append(c)
        self.active = list(self.all_cards)
        shuffle(self.active)
                
    def pretty(self):
        print [c.pretty for c in self.active]
    
    def shuffle(self):
        shuffle(self.active)

    def deal_card(self):
        c = self.active[0]
        self.active.pop(0)
        return c

    def deal_x(self, x):
        out = []
        for i in range(x):
            c = self.deal_card()
            out.append(c)
        return out

    def take_card(self, val, suit):
        for i, card in enumerate(active):
            if card.val == val & card.suit == suit:
                active.pop(i)
                break
        return card(val, suit)


    
    def reset(self):
        self.active = list(self.all_cards)
        shuffle(self.active)

d1 = deck()
print [c.pretty for c in d1.active]