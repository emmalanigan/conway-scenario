require './game.rb'

describe "viewing the next generation in conway's game of life" do
  it 'stays the same for an empty grid' do
    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(empty_grid)).to eq(empty_grid)
  end

  it 'returns an empty grid given one alive cell in the center' do
    one_cell_grid = [
      [:empty, :empty, :empty],
      [:empty, :alive, :empty],
      [:empty, :empty, :empty]
    ]

    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(one_cell_grid)).to eq(empty_grid)
  end


  xit 'should return a non-empty grid when we implement a viable first generation' do
    viable_grid = [
      [:empty, :empty, :empty,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :empty, :empty,:empty]
    ]
    expect(view_next_conway_generation(viable_grid)).to eq viable_grid
  end
end

describe "how to calculate number of live neighbours in a conway grid" do
  it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
    two_by_one_grid = [:empty, :alive]
    number_of_neighbours = number_of_living_neigbours(two_by_one_grid, row:0, column:0)
    expect(number_of_neighbours).to eq 1
  end

  it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
    two_by_one_grid = [:alive, :empty]
    number_of_neighbours = number_of_living_neigbours(two_by_one_grid, row:0, column:1)
    expect(number_of_neighbours).to eq 1
  end

  it "should tell me there is two live neighbours if two alive in a 3x3 grid" do
    three_by_three_grid = [
      [:empty, :alive, :empty],
      [:alive, :empty, :empty],
      [:empty, :empty, :empty]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:1, column:1)
    expect(number_of_neighbours).to eq 2
  end

  it "should tell me there is 3 live neighbours if 3 alive in a 3x3 grid - with chosen cell in the middle" do
    three_by_three_grid = [
      [:empty, :alive, :empty],
      [:alive, :empty, :alive],
      [:empty, :empty, :empty]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:1, column:1)
    expect(number_of_neighbours).to eq 3
  end

  it "should tell me there is 3 live neighbours if 3 alive in a 3x3 grid with edge cell" do
    three_by_three_grid = [
      [:empty, :alive, :empty],
      [:alive, :alive, :empty],
      [:empty, :empty, :empty]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:0, column:0)
    expect(number_of_neighbours).to eq 3
  end

  it "should tell me there is 8 live neighbours if 8 alive in a 3x3 grid with edge cell" do
    three_by_three_grid = [
      [:alive, :alive, :alive],
      [:alive, :empty, :alive],
      [:alive, :alive, :alive]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:1, column:1)
    expect(number_of_neighbours).to eq 8
  end

  it "should tell me there is 8 live neighbours if all alive in a 3x3 grid with edge cell" do
    three_by_three_grid = [
      [:alive, :alive, :alive],
      [:alive, :alive, :alive],
      [:alive, :alive, :alive]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:1, column:1)
    expect(number_of_neighbours).to eq 8
  end

  it "should tell me there is 5 live neighbours if all alive in a 3x3 grid with left edge cell" do
    three_by_three_grid = [
      [:alive, :alive, :alive],
      [:empty, :alive, :alive],
      [:alive, :alive, :alive]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:1, column:0)
    expect(number_of_neighbours).to eq 5
  end
  it "should tell me there is 5 live neighbours if all alive in a 3x3 grid with right edge cell" do
    three_by_three_grid = [
      [:alive, :alive, :alive],
      [:alive, :alive, :alive],
      [:alive, :alive, :alive]
    ]
    number_of_neighbours = number_of_living_neigbours(three_by_three_grid, row:1, column:2)
    expect(number_of_neighbours).to eq 5
  end
end
