import Foundation

var a : [Int] = []
print("Podaj n")
guard let n = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if (n < 3) {
    fatalError("Liczba wyrazow w ciagu musi wynosic co najmniej 3")
}
for i in 0...(n-1) {
    print("Podaj a\(i+1)")
    guard let liczba = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita")
    }
    if (i > 0 && liczba == a[i-1]) {
        fatalError("Wyraz ciagu nie moze byc rowny poprzedniemu")
    }
    a.append(liczba)
}

var max_l : Int = 0
var min_l : Int = 0

for i in 0...(n-3) {
    if (a[i+1] > a[i] && a[i+1] > a[i+2]) {
        max_l += 1
    }
    if (a[i+1] < a[i] && a[i+1] < a[i+2]) {
        min_l += 1
    }
}
print("Maksima lokalne: \(max_l), minima lokalne: \(min_l)")
