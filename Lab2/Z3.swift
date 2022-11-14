import Foundation

var a : Double = 0.0
print("Podaj bok szescianu: ")
if let tmp = Double(readLine()!) {
    a = tmp
}

print("Pole calkowite: " + String(format: "%.2f", 6.0*a*a) + ", Objetosc: " + String(format: "%.2f", a*a*a))
