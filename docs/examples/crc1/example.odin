package CRC

import "core:fmt"

Person :: struct {
    name : string,
    age : int
}

// Creator
new_person :: proc(name: string, age: int) -> Person {
    person : Person
    person.name = name
    person.age = age
    return person
}

// Reducer
// We use a new structure to avoid mutating the original parameter
rejuvenate_person :: proc(person: Person, years: int) -> Person {
    return new_person(person.name, person.age - years)
}

// Converter, we only show the value we want to.
person_to_string :: proc(person: Person) -> (string, string, int) {
    return "The person %s, now have %d years", person.name, person.age
}

// Pipeline
main :: proc() {
    person := new_person("Camilo", 35)
    person = rejuvenate_person(person, 10)
    out, name, age := person_to_string(person)
    fmt.printfln(out, name, age) // The person Camilo, now have 25 years
}