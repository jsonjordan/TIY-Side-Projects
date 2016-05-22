require 'rubycards'
include RubyCards

hand = Hand.new
deck = Deck.new(number_decks: 2, exclude_rank: [2, 'Jack'])

deck.shuffle!

hand.draw(deck, 10)

puts hand
