import Foundation

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
    
}
