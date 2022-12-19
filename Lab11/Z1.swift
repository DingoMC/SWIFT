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

var p = Prostokat(a: 3.0, b: 4.0)

p.show()
print(p.area())
print(p.perimeter())
