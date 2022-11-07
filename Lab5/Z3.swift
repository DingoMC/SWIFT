import Foundation

print("Podaj liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if (liczba < 100) {
    fatalError("Liczba musi byc co najmniej trzycyfrowa")
}
var n : Int = liczba
var s : Int = 1
var i : Int = 0
while n > 10 {
    s *= (n % 10)
    n /= 10
    i += 1
}
s *= n
i += 1
var srednia : Double = pow(Double(s), 1.0 / Double(i))
print("Srednia geometryczna: \(srednia)")
