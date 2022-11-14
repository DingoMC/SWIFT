import Foundation

var oceny : [Double] = []
var wagi : [Int] = []

for i in 0...2 {
    print("Ocena " + String(i) + ":")
    if let tmp = Double(readLine()!) {
        oceny.append(tmp)
    }
    print("Waga " + String(i) + ":")
    if let tmp = Int(readLine()!) {
        wagi.append(tmp)
    }
}

var avg = 0.0
var n = 0
for i in 0...2 {
    avg += oceny[i] * Double(wagi[i])
    n += wagi[i]
}
avg /= Double(n)

print("Srednia: " + String(format: "%.2f", avg))
