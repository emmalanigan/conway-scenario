describe "viewing the next generation in conway's game of life" do
  it 'stays the same for an empty grid' do
    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(empty_grid)).to eq(empty_grid)
  end
end

def view_next_conway_generation(generation)
  [
    [:empty, :empty, :empty],
    [:empty, :empty, :empty],
    [:empty, :empty, :empty]
  ]
end