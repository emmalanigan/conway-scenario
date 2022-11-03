def view_next_conway_generation(generation)
    next_generation = []
    generation.each do |row|
      future_row = []
      row.each do |cell|
        future_row << conway_rule(cell,number_of_living_neigbours(generation,row:0, column:0))
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

    neighbours_search.each do |cell|
        current_row= cell[0]
        current_column= cell[1]
        current_cell = [row, column]
        
        if current_row>=0 && current_column>=0 && cell != current_cell && grid.dig(current_row,current_column) == :alive            
            living_count += 1
        end         
    end
    living_count
end