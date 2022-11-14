import Foundation

var a : Double = 0.0
var b : Double = 0.0
var z : Double = 0.0
var cena : Double = 0.0
var s : Double = 0.0
print("Podaj wymiar a: ")
if let tmp = Double(readLine()!) {
    a = tmp
}
print("Podaj wymiar b: ")
if let tmp = Double(readLine()!) {
    b = tmp
}
print("Podaj wymiar z: ")
if let tmp = Double(readLine()!) {
    z = tmp
}
print("Podaj szerokosc drzwi: ")
if let tmp = Double(readLine()!) {
    s = tmp
}
print("Podaj cene listwy za metr: ")
if let tmp = Double(readLine()!) {
    cena = tmp
}
var lp : Double = 2.0 * (a + b) - s
var lk : Double = 2.0 * (z + b - s)
var c : Double = (lp + lk) * cena
print("W pokoju trzeba polozyc " + String(lp) + "m listwy, a na korytarzu " + String(lk) + "m. Cena listwy: " + String(c))
