require_relative '../game'

describe Game do
  before :each do
    @game = Game.new '2022-10-11', '2019-12-10', 'multiplayer'
  end

  it 'game should be an instance of game class' do
    expect(@game).to be_an_instance_of Game
  end

  it 'game should be an archived' do
    expect(@game.can_be_archived?).to be false
  end

  it 'last played date is 2023-01-01' do
    expect @last_played_at == '2023-01-01'
  end
end
