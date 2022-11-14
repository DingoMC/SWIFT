import Foundation

let pi : Double = 3.14159265358979

var r : Double = 0.0
print("Podaj promien kola: ")
if let tmp = Double(readLine()!) {
    r = tmp
}

print("Obwod: " + String(format: "%.2f", 2.0*pi*r) + ", Pole: " + String(format: "%.2f", pi*r*r))
