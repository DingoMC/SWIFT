import Foundation

var tab: [Int] = []

print("Podaj liczbe elementow tablicy", terminator: ": ")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if (x <= 0) {
    fatalError("Liczba elementow powinna byc wieksza niz 0")
}

for i in 1...x {
    print("Podaj \(i) element", terminator: ": ")
    guard let l = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita")
    }
    tab.append(l)
}

print("Podaj szukana liczbe", terminator: ": ")
guard let s = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if (tab[0] == s) {
    print("Podana liczba znajduje sie na poczatku tablicy")
}
if (tab[x-1] == s) {
    print("Podana liczba znajduje sie na koncu tablicy")
}
