import Foundation
enum Standard: Int, CaseIterable {
    case niski = 1
    case sredni = 2
    case wysoki = 3
}
print("Podaj liczbe mieszkan", terminator: ": ")
guard let m = Int(readLine()!) else {
    fatalError("To nie jest liczba!")
}
if (m <= 0) {
    fatalError("Liczba mieszkan powinna byc co najmniej 1")
}
var mieszkania : [(lokalizacja: String, powierzchnia: Double, cena_za_metr: Double, standard: Standard)] = []

for _ in 0..<m {
    print("Podaj lokalizacje", terminator: ": ")
    let l = readLine()!
    print("Podaj powierzchnie w m2", terminator: ": ")
    guard let p = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    print("Podaj cene za m2", terminator: ": ")
    guard let c = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    print("Podaj standard mieszkania (niski - 1, sredni - 2, wysoki - 3)", terminator: ": ")
    guard let s = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    var x : Int = 0
    for i in Standard.allCases {
        if (s == i.rawValue) {
            x = s
            break
        }
    }
    mieszkania.append((lokalizacja: l, powierzchnia: p, cena_za_metr: c, standard: Standard(rawValue: x)!))
}
let ms = mieszkania.sorted {
    $0.standard.rawValue < $1.standard.rawValue
}
for m in ms {
    print("Lokalizacja: \(m.lokalizacja) - \(m.powierzchnia) m2 - \(m.cena_za_metr) PLN/m2 - \(m.standard)")
}  
