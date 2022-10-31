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

  it 'should return a non-empty grid when we implement a viable first generation' do
    viable_grid = [
      [:empty, :empty, :empty,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :empty, :empty,:empty]
    ]
    expect(view_next_conway_generation(viable_grid)).to eq viable_grid
  end
end

def view_next_conway_generation(generation)
  # How do I return a correct version of the next gen?
  next_generation = []
  generation.each do |row|
    future_row = []
    row.each do |cell|
      future_row << conway_rule(cell,number_of_living_neigbours_next_to(cell))
    end
    next_generation << future_row
  end
  next_generation
end

def conway_rule(cell,number_of_living_neigbours)
  :empty
end
def number_of_living_neigbours_next_to(cell)
end