import Foundation

print("Podaj liczbe")
guard let licz = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if licz >= 1 {
    print("1")
    print("1")
}
var i = 1
var j = 1
var wynik = i + j
while wynik < licz {
    print(wynik)
    i = j
    j = wynik
    wynik = i + j
}
