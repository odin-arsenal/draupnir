package CRC

import "core:fmt"

Person :: struct {
    name : string,
    age : int
}

// Creator
create_person :: proc(name: string, age: int) -> Person {
    person : Person
    person.name = name
    person.age = age
    return person
}

// Reducer
// We use a new structure to avoid mutating the original parameter
rejuvenate_person :: proc(person: Person, years: int) -> Person {
    return create_person(person.name, person.age - years)
}

// Converter, we only show the value we want to.
print_final_age :: proc(person: Person) {
    fmt.printfln("The person %s, now have %d years", person.name, person.age)
}

// Pipeline
main :: proc() {
    person := create_person("Camilo", 35)
    person = rejuvenate_person(person, 10)
    print_final_age(person) // The person Camilo, now have 25 years
}