import Foundation
var s = 0
var avg = 0.0
var a = Int.random(in:0...100)
s += a
a = Int.random(in:0...100)
s += a
a = Int.random(in:0...100)
s += a
avg = Double(s)/3.0
print("Suma:",s,"Srednia:",avg)
