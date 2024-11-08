package Data

import "core:fmt"

Square :: struct {
    x1, y1, x2, y2, x3, y3, x4, y4 : [2]int
}

square :: proc (x: int, y: int, size: int) -> Square {
    return Square{
        {x, y}, {x + size, y}, 
        {x + size, y}, {x + size, y + size},
        {x + size, y + size}, {x, y + size},
        {x, y + size}, {x, y}
    }
}

main :: proc() {
    // We can save the procedure in a variable
    // Or pass the procedure as a param in another procedure
    // This is passing the pointer
    my_procedure_pointer := square

    // Square{x1 = [5, 0], y1 = [15, 0], 
    // x2 = [15, 0], y2 = [15, 10], 
    // x3 = [15, 10], y3 = [5, 10], 
    // x4 = [5, 10], y4 = [5, 0]}
    fmt.printf("%v", my_procedure_pointer(5, 0, 10))
}