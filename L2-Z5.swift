import Foundation

let a = Int.random(in: 1...9)
let b = Int.random(in: 1...9)
let c = Int.random(in: 1...9)

let avg : Double = Double(a + b + c) / 3.0

print("Liczby: " + String(a) + ", " + String(b) + ", " + String(c) + ", Srednia: " + String(avg))
