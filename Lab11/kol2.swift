import Foundation
import Glibc
 
class Punkt {
    var x : Double = 0.0
    var y : Double = 0.0
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

class Dane2P {
    var p1: Punkt = Punkt(x: 0, y: 0)
    var p2: Punkt = Punkt(x: 0, y: 0)
    init(p1: Punkt, p2: Punkt) {
        self.p1 = p1
        self.p2 = p2
    }
    func length (p1: Punkt, p2: Punkt) -> Double {
        return sqrt(pow(p1.x - p2.x, 2.0) + pow(p1.y - p2.y, 2.0))
    }
    func vector (p1: Punkt, p2: Punkt) -> (Double, Double) {
        return (p2.x - p1.x, p2.y - p1.y)
    }
    func show () {
        print("Odcinek: A(\(p1.x),\(p1.y)), B(\(p2.x),\(p2.y))")
    }
}

class Dane3P : Dane2P {
    var p3: Punkt = Punkt(x: 0, y: 0)
    init (p1: Punkt, p2: Punkt, p3: Punkt) {
        self.p3 = p3
        super.init(p1: p1, p2: p2)
    }
    func wsp () -> Bool {
        var dl : [Double] = [length(p1: super.p1, p2: super.p2), length(p1: super.p1, p2: self.p3), length(p1: super.p2, p2: self.p3)]
        dl.sort()
        print(dl)
        if (dl[0] + dl[1] == dl[2]) {
            return true
        }
        return false
    }
    func rodzajTrojkata () -> String {
        if (wsp()) {
            return "Nie trojkat"
        }
        let wektory : [(Double, Double)] = [vector(p1: super.p1, p2: super.p2), vector(p1: super.p2, p2: self.p3),vector(p1: self.p3, p2: super.p1)]
        let il : [Double] = [wektory[0].0 * wektory[1].0 + wektory[0].1 * wektory[1].1, wektory[1].0 * wektory[2].0 + wektory[1].1 * wektory[2].1, wektory[2].0 * wektory[0].0 + wektory[2].1 * wektory[0].1]
        var dl : [Double] = [length(p1: super.p1, p2: super.p2), length(p1: super.p2, p2: self.p3), length(p1: self.p3, p2: super.p1)]
    }
}

let x : Dane3P = Dane3P(p1: Punkt(x: 0, y: 0), p2: Punkt(x: 4, y: 4), p3: Punkt(x: 8, y: 8))
print(x.wsp())
