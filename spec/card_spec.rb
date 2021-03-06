class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  # let is lazy-evaluated: it is not evaluated until the first time the method it defines is invoked.
  before do
    @card = Card.new('Ace', 'Spades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    comparison = 'Spadess'
    expect(card.suit).to(eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!")
  end
end
