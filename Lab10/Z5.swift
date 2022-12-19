// Osoba
import Foundation

class Osoba {
    var imie : String = ""
    var nazwisko : String = ""
    var rok : Int = 0
    init(imie : String, nazwisko: String, rok: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rok = rok
    }
    func age () -> Int {
        let year = Calendar.current.component(.year, from: Date())
        return year - rok
    }
    func show () -> Void {
        print("\(imie) \(nazwisko) ur. \(rok)")
    }
}
//main
import Foundation

var o1 = Osoba(imie: "Marcin", nazwisko: "Basak", rok: 2001)
var o2 = Osoba(imie: "Marcin", nazwisko: "Basak", rok: 2002)

if (o1.age() > o2.age()) {
    print("Starsza jest osoba", terminator: ": ")
    o1.show()
}
else if (o1.age() < o2.age()) {
    print("Starsza jest osoba", terminator: ": ")
    o2.show()
}
else {
    print("Osoby sa w tym samym wieku")
}
