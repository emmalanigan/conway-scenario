def view_next_conway_generation(generation)
    next_generation = []
    generation.each do |row|
      future_row = []
      row.each do |cell|
        future_row << conway_rule(cell,number_of_living_neigbours(cell,row:0, column:0))
      end
      next_generation << future_row
    end
    next_generation
end
  
def conway_rule(cell,number_of_living_neigbours)
   :empty
end
  
def number_of_living_neigbours(grid, row:, column:)
  living_count = 0
  neighbours_search = [row-1, row, row+1].product([column-1, column, column+1])

   if grid[0].class != Array
     if grid[column + 1] == :alive || grid[column - 1] == :alive
      living_count += 1
     end
   else
    neighbours_search.each do |cell|
        current_row= cell[0]
        current_column= cell[1]
        if grid.dig(current_row,current_column) == :alive && cell != [row, column]
            living_count += 1
        end         
    end
    living_count
   end
end

# def check_horizontal_neigbours(row)
#   if row[]
# end