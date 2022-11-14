import Foundation

var tab1: [Int] = []
var tab2: [Int] = []

print("Podaj liczbe elementow tablicy", terminator: ": ")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if (x <= 0) {
    fatalError("Liczba elementow powinna byc wieksza niz 0")
}

for _ in 1...x {
    tab1.append(Int.random(in: 1...20))
    tab2.append(Int.random(in: 1...20))
}

var l1 : Int = 0

for i in 0...(x-1) {
    if (tab2.contains(tab1[i])) {
        l1 += 1
    }
}
print("Tablica 1: [", terminator: "")
for i in 0...(x-1) {
    print("\(tab1[i])", terminator: ", ")
}
print("]\nTablica 2: [", terminator: "")
for i in 0...(x-1) {
    print("\(tab2[i])", terminator: ", ")
}
print("]")
if (l1 == x) {
    print("Tablice zawieraja identyczne elementy")
}
else {
    print("Tablice nie zawieraja identycznych elementow")
}
