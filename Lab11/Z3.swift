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
        return 2023 - rok
    }
    func show () -> Void {
        print("\(imie) \(nazwisko) ur. \(rok)")
    }
}

enum Kierunki : String, CaseIterable {
    case II = "Informatyka"
    case EE = "Elektrotechnika"
    case IM = "Inzynieria Multimediow"
    case IZI = "Inzynierskie Zastosowania Informatyki"
}

class Student : Osoba {
    var nrIndeksu : Int = 0
    var kierunek : Kierunki?
    var rokStudiow : Int = 0
    var oceny : [Double] = []
    init (imie : String, nazwisko : String, r_ur : Int, idx : Int, kier : Kierunki?, rok : Int, o : [Double]) {
        if (r_ur < 0) {
            fatalError("Bledny rok urodzenia")
        }
        if (rok < 1 || rok > 4) {
            fatalError("Bledny rok akademicki")
        }
        if (o.count != 5) {
            fatalError("Bledna liczba ocen")
        }
        for i in 0..<5 {
            if (o[i] != 2.0 && o[i] != 3.0 && o[i] != 3.5 && o[i] != 4.0 && o[i] != 4.5 && o[i] != 5.0) {
                fatalError("Nieprawidlowa ocena")
            }
        }
        self.nrIndeksu = idx
        self.kierunek = kier
        self.rokStudiow = rok
        self.oceny = o
        super.init(imie: imie, nazwisko: nazwisko, rok: r_ur)
    }
    func mean () -> Double {
        var s : Double = 0.0
        for i in 0..<5 {
            s += self.oceny[i]
        }
        return s / 5.0
    }
    override func show () -> Void {
        print("\(super.imie) \(super.nazwisko) (ur. \(super.rok)) - \(self.nrIndeksu), \(self.kierunek!), rok \(self.rokStudiow), Oceny", terminator: ": ")
        for i in 0..<5 {
            print("\(self.oceny[i])", terminator: ", ")
        }
        print()
    }
}

func wczytaj () -> [Student] {
    print("Podaj liczbe studentow", terminator: ": ")
    guard let n = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita")
    }
    if (n <= 0) {
        fatalError("Liczba studentow musi wynosic co najmniej 1")
    }
    var tab : [Student] = []
    for i in 1...n {
        print("Podaj imie studenta \(i)", terminator: ": ")
        let im : String = readLine()!
        print("Podaj nazwisko studenta \(i)", terminator: ": ")
        let na : String = readLine()!
        print("Podaj rok urodzenia studenta \(i)", terminator: ": ")
        guard let r_ur = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        if (r_ur < 0) {
            fatalError("Bledny rok urodzenia")
        }
        print("Podaj nr indeksu studenta \(i)", terminator: ": ")
        guard let idx = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        if (idx < 0) {
            fatalError("Bledny nr indeksu")
        }
        print("Podaj kierunek studenta \(i)", terminator: ": ")
        let k : String = readLine()!
        var kier : String = ""
        for i in Kierunki.allCases {
            if (k == i.rawValue) {
                kier = k
                break
            }
        }
        if (kier == "") {
            fatalError("Bledny kierunek studiow")
        }
        print("Podaj rok studenta \(i)", terminator: ": ")
        guard let rok = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        if (rok < 1 || rok > 4) {
            fatalError("Bledny rok studiow")
        }
        var oceny : [Double] = []
        for j in 1...5 {
            print("Podaj ocene \(j) studenta \(i)", terminator: ": ")
            guard let o = Double(readLine()!) else {
                fatalError("To nie jest liczba")
            }
            if (o != 2.0 && o != 3.0 && o != 3.5 && o != 4.0 && o != 4.5 && o != 5.0) {
                fatalError("Nieprawidlowa ocena")
            }
            oceny.append(o)
        }
        tab.append(Student(imie: im, nazwisko: na, r_ur: r_ur, idx: idx, kier: Kierunki(rawValue: kier)!, rok: rok, o: oceny))
    }
    return tab
}

func wyswietlNaKierunku (tab: [Student]) -> Void {
    print("Podaj kierunek", terminator: ": ")
    let k : String = readLine()!
    var kier : String = ""
    for i in Kierunki.allCases {
        if (k == i.rawValue) {
            kier = k
            break
        }
    }
    if (kier == "") {
        fatalError("Bledny kierunek studiow")
    }
    for i in 0..<tab.count {
        if (tab[i].kierunek == Kierunki(rawValue: kier)!) {
            tab[i].show()
        }
    }
}

var tab : [Student] = wczytaj()
for i in 0..<tab.count {
    tab[i].show()
    print(tab[i].mean())
}
wyswietlNaKierunku(tab: tab)
