import Foundation

print("Podaj 1 liczbe")
guard let n1 = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
print("Podaj 2 liczbe")
guard let n2 = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
print("1 - dodawanie, 2 - odejmowanie, 3 - mnozenie, 4 - dzielenie")
guard let opt = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
switch (opt) {
case 1: print("\(n1) + \(n2) = \(n1+n2)")
case 2: print("\(n1) - \(n2) = \(n1-n2)")
case 3: print("\(n1) * \(n2) = \(n1*n2)")
case 4:
    if (n2 == 0) {
        fatalError("Dzielenie przez 0!")
    }
    else {
        print("\(n1) / \(n2) = \(n1/n2)")
    }
default: print("Nieprawidlowa opcja")
}
