require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/board'
require_relative '../lib/tile'
require_relative '../lib/scoring'

describe Tile do
  it 'must score a single letter' do
    expect(Tile.new('a').values).must_equal [1]
  end
  it 'must score a short word' do
    expect(Tile.new('apple').values).must_equal [1, 3, 3, 1, 1]
  end
  it 'must score a long word' do
    expect(Tile.new('discombobulated').values).must_equal [2, 1, 1, 3, 1, 3, 3, 1, 3, 1, 1, 1, 1, 1, 2]
  end
  it 'must score a word with capitilization' do
    expect(Tile.new('Spoon').values).must_equal [1, 3, 1, 1, 1]
  end
  it 'must score a word in all caps' do
    expect(Tile.new('FORKS').values).must_equal [4, 1, 1, 5, 1]
  end
end