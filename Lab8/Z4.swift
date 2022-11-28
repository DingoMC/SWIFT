import Foundation

enum Miesiac: CaseIterable {
    case Styczen
    case Luty
    case Marzec
    case Kwiecien
    case Maj
    case Czerwiec
    case Lipiec
    case Sierpien
    case Wrzesien
    case Pazdziernik
    case Listopad
    case Grudzien
}
var m : Miesiac = Miesiac.Styczen
switch m {
    case .Grudzien, .Styczen, .Luty:
        print("Zima")
    case .Marzec, .Kwiecien, .Maj:
        print("Wiosna")
    case .Czerwiec, .Lipiec, .Sierpien:
        print("Lato")
    case .Wrzesien, .Pazdziernik, .Listopad:
        print("Jesien")
}
