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
// Pracownik
import Foundation

enum Stanowisko : String, CaseIterable {
    case juniorDeveloper = "juniorDeveloper"
    case seniorDeveloper = "seniorDeveloper"
    case teamLeader = "teamLeader"
    case projectManager = "projectManager"
    case boss = "boss"
}

class Pracownik : Osoba {
    var rok_z : Int = 0
    var stanowisko : Stanowisko?
    var stawka : Double = 0.0
    var godziny : Int = 0
    var firma : String = ""
    init(rok_z: Int, stanowisko: Stanowisko?, stawka: Double, godziny: Int, firma: String, imie: String, nazwisko: String, rok: Int) {
        self.rok_z = rok_z
        self.stanowisko = stanowisko
        self.stawka = stawka
        self.godziny = godziny
        self.firma = firma
        self.stanowisko = stanowisko
        super.init(imie: imie, nazwisko: nazwisko, rok: rok)
    }
    func experience () -> Int {
        let year = Calendar.current.component(.year, from: Date())
        return year - rok_z
    }
    func salary () -> Double {
        return Double(godziny) * stawka
    }
    override func show () -> Void {
        print("\(super.imie) \(super.nazwisko) - Zatrudniony w \(rok_z), stanowisko: \(stanowisko!), firma: \(firma), liczba godzin \(godziny), stawka: \(stawka)")
    }
}
// main
import Foundation

var p1 = Pracownik(rok_z: 2020, stanowisko: Stanowisko.projectManager, stawka: 25.5, godziny: 10, firma: "DingoMC Systems", imie: "Mateusz", nazwisko: "Adamczyk", rok: 2001)
p1.show()
print(p1.age())
print(p1.experience())
print(p1.salary())
