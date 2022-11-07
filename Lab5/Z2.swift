import Foundation

print("Podaj liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
var max : Int = Int(pow(Double(liczba), 0.5)) + 1
var pierwsza : Bool = true

for i in 2...max {
    if (liczba % i == 0 && i != liczba) {
        pierwsza = false
        print("Liczba nie jest pierwsza")
        break
    }
}
if (pierwsza) {
    print("Liczba jest pierwsza")
}
