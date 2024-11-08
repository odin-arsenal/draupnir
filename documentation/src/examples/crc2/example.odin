package CRC

import "core:fmt"

Treasure :: struct {
    x: int,
    y: int
}

// Constructors
new :: proc(x: int, y: int) -> Treasure {
    treasure : Treasure
    treasure.x = x
    treasure.y = y
    return treasure
}

empty :: proc() -> Treasure {
    return new(0, 0)
}

// Reducers
north :: proc(treasure : Treasure) -> Treasure {
    return new(treasure.x, treasure.y - 1)
}

south :: proc(treasure : Treasure) -> Treasure {
    return new(treasure.x, treasure.y + 1)
}

east :: proc(treasure : Treasure) -> Treasure {
    return new(treasure.x - 1, treasure.y)
}

west :: proc(treasure : Treasure) -> Treasure {
    return new(treasure.x + 1, treasure.y)
}

// Converter
show :: proc (treasure : Treasure) -> (string, int, int) {
    return "The treasure is on the coordinates (%d, %d)", treasure.x, treasure.y
}

// Pipeline
main :: proc() {
    treasure := empty() // (0, 0)
    treasure = north(treasure) // (0, -1)
    treasure = north(treasure) // (0, -2)
    treasure = north(treasure) // (0, -3)
    treasure = north(treasure) // (0, -4)
    treasure = west(treasure)  // (1, -4)
    treasure = west(treasure)  // (2, -4)
    treasure = west(treasure)  // (3, -4)
    treasure = south(treasure) // (3, -3)
    treasure = east(treasure)  // (2, -3)
    treasure = east(treasure)  // (1, -3)
    treasure = east(treasure)  // (0, -3)
    out, x, y := show(treasure)
    fmt.printfln(out, x, y) // The treasure is on the coordinates (0, -3)
}