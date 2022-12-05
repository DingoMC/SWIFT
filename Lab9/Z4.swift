import Foundation

var student : [Int : String] = [:]

for i in 1...5 {
    print("Podaj identyfikator studenta \(i)", terminator: ": ")
    guard let id = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    print("Podaj nazwisko studenta \(i)", terminator: ": ")
    let n : String = readLine()!
    student[id] = n
}

for (id, nazw) in student {
    print("\(id) -> \(nazw)")
}

print("Podaj szukany identyfikator studenta", terminator: ": ")
guard let id = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
if student.keys.contains(id) {
    for (i, nazw) in student {
        if (id == i) {
            print("\(id) -> \(nazw)")
            break
        }
    }
}
else {
    print("Nie ma takiego studenta!")
}

print("Podaj szukany identyfikator studenta", terminator: ": ")
guard let id = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
if student.keys.contains(id) {
    student.removeValue(forKey: id)
}
else {
    print("Nie da sie!")
}
