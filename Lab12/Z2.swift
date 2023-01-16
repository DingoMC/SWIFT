import Foundation

protocol LiczbaLosowa {
    func generujLiczbe() -> Int
}

class Liczby : LiczbaLosowa {
    var l1 : Int = 0
    var l2 : Int = 0
    init() {
        self.l1 = generujLiczbe()
        self.l2 = generujLiczbe()
    }
    func generujLiczbe() -> Int {
        return Int.random(in: -32768...32767)
    }
    func wyswietl () -> Void {
        print("\(self.l1) \(self.l2)")
    }
    func potega (p : Double) -> Void {
        self.l1 = Int(pow(Double(self.l1), p))
        self.l2 = Int(pow(Double(self.l2), p))
    }
}
var l : Liczby = Liczby()
l.wyswietl()
l.potega(p: 2)
l.wyswietl()
