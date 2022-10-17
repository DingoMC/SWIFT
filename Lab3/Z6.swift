import Foundation

var kwota : Double = 0.00

print("Podaj kwote: ")
if let tmp = Double(readLine()!) {
    kwota = tmp
}

print("Wartosc po przeliczeniu to: " + String(format: "%.2f" + "$", kwota / 3.90))
