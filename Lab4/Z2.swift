import Foundation

print("Podaj rok <2,3010>")
guard let rok = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if (rok >= 2 && rok <= 3010) {
    let wiek : Int = ((rok - 1) / 100) + 1
    print("rok \(rok) - wiek \(wiek)")
}
else {
    print("Rok spoza zakresu!")
}
