import Foundation

var samochody = Set<String>()
samochody.insert("X1")
samochody.insert("X2")
samochody.insert("X3")
samochody.insert("X4")
samochody.insert("X5")
samochody.insert("X6")

for i in samochody {
    print(i)
}

print("Podaj model samochodu", terminator: ": ")
let x : String = readLine()!

if samochody.contains(x) {
    samochody.remove(x)
    print("Usunieto \(x)")
}
else {
    print("Nie da sie!")
}
