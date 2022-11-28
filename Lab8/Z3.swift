import Foundation

print("Podaj liczbe mieszkan", terminator: ": ")
guard let m = Int(readLine()!) else {
    fatalError("To nie jest liczba!")
}
if (m <= 0) {
    fatalError("Liczba mieszkan powinna byc co najmniej 1")
}
var mieszkania : [(lokalizacja: String, powierzchnia: Double, cena_za_metr: Double)] = []

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
    mieszkania.append((lokalizacja: l, powierzchnia: p, cena_za_metr: c))
}
let ms = mieszkania.sorted {
    ($0.cena_za_metr * $0.powierzchnia) > ($1.cena_za_metr * $1.powierzchnia)
}
print("Najdrozsze mieszkanie: \(ms[0].lokalizacja) - \(ms[0].powierzchnia) m2 - \(ms[0].cena_za_metr) PLN/m2")
print("Najtansze mieszkanie: \(ms[m-1].lokalizacja) - \(ms[m-1].powierzchnia) m2 - \(ms[m-1].cena_za_metr) PLN/m2")
print("Podaj lokalizacje", terminator: ": ")
let x = readLine()!
for i in mieszkania {
    if (i.lokalizacja == x) {
        print("\(i.powierzchnia) m2 - \(i.cena_za_metr) PLN/m2")
    }
}
