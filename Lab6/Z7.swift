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

var max_l : Int = 1
var start_i : Int = 0
var curr_l : Int = 1
var curr_i : Int = 0

for i in 1 ..< x {
    if (tab[i] > tab[i-1]) {
        curr_l += 1
    }
    else {
        if (curr_l > max_l) {
            max_l = curr_l
            start_i = curr_i
        }
        curr_l = 1
        curr_i = i
    }
}
if (curr_l > max_l) {
    max_l = curr_l
    start_i = curr_i
}

print("Najdluzszy podciag rosnacy zaczyna sie na pozycji \(start_i) i ma dlugosc \(max_l)")
print("Elementy", terminator: ": ")
for i in start_i ..< (start_i+max_l) {
    print("\(tab[i])", terminator: ", ")
}
print("")
