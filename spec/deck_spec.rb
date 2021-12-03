require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'

RSpec.describe Deck do
  it 'exists' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    cards = [card_1]
    deck = Deck.new(cards)

    expect(deck).to be_instance_of(Deck)
  end

  it 'can count number of cards in deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.count).to eq(3)
  end

  it 'can sort cards based on given category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.count).to eq(3)
    expect(deck.cards_in_category(:STEM).length).to eq(2)
    expect(deck.cards_in_category(:Geography).length).to eq(1)
    expect(deck.cards_in_category("Pop Culture")).to eq([])
  end


end
