We want a component that takes in a representation of a "generation" in
Conway's game of life (https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life),
and gives us the next generation.

Rules:
- Any live cell with fewer than two live neighbours dies, as if by underpopulation.
- Any live cell with two or three live neighbours lives on to the next generation.
- Any live cell with more than three live neighbours dies, as if by overpopulation.
- Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.