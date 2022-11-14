import Foundation

var tab2d: [[Float]] = [[]]

print("Podaj liczbe wierszy", terminator: ": ")
guard let w = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if (w <= 0) {
    fatalError("Liczba elementow powinna byc wieksza niz 0")
}

print("Podaj liczbe kolumn", terminator: ": ")
guard let k = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if (k <= 0) {
    fatalError("Liczba elementow powinna byc wieksza niz 0")
}

for i in 0 ..< w {
    tab2d.append([])
    for _ in 0 ..< k {
        tab2d[i].append(Float.random(in: -100.0...100.0))
    }
}

print("Tablica [", terminator: "")
for i in 0 ..< w {
    print("[", terminator: "")
    for j in 0 ..< k {
        print("\(tab2d[i][j])", terminator:", ")
    }
    print("]", terminator: ", ")
}
print("]")

var max_v : Float = -100.0
var max_w : Int = 0
var max_k : Int = 0

for i in 0 ..< w {
    for j in 0 ..< k {
        if (tab2d[i][j] > max_v) {
            max_v = tab2d[i][j]
            max_w = i
            max_k = j
        }
    }
}

print("Najwiekszy element wynosi \(max_v) i znajduje sie na pozycji [\(max_w), \(max_k)]")
