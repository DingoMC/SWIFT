// Prostopadloscian
import Foundation

class Prostopadloscian : Prostokat {
    var h : Double = 0.0
    init(a: Double, b: Double, h: Double) {
        super.init(a: a, b: b)
        self.h = h
    }
    func surfaceArea () -> Double {
        return  2 * (a * b + a * h + b * h)
    }
    func sumVertices () -> Double {
        return 4 * (a + b + h)
    }
    func volume () -> Double {
        return a * b * h
    }
    override func show () -> Void {
        print("Prostopadloscian \(a)x\(b)x\(h)")
    }
}
// Prostokat
import Foundation

class Prostokat {
    var a : Double = 0.0
    var b : Double = 0.0
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    func area () -> Double {
        return a * b
    }
    func perimeter () -> Double {
        return 2 * a + 2 * b
    }
    func show () -> Void {
        print("Prostokat \(a)x\(b)")
    }
}
// main
import Foundation

var p = Prostopadloscian(a: 3, b: 4, h: 5)
p.show()
print(p.surfaceArea())
print(p.sumVertices())
print(p.volume())
