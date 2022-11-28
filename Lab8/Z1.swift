import Foundation

var osoba : (imie: String, nazwisko: String, rok: Int)
var o1 = (imie: "Marcin", nazwisko: "Basak", rok: 2000)
var o2 = (imie: "Jakub", nazwisko: "Baran", rok: 2001)
if (o1.rok > o2.rok) {
    print("Starsza jest osoba: \(o2.imie) \(o2.nazwisko)")
}
else if (o1.rok < o2.rok) {
    print("Starsza jest osoba: \(o1.imie) \(o1.nazwisko)")
}
else {
    print("Osoby sa w tym samym wieku")
}
