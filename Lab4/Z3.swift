import Foundation

print("Podaj srednia")
guard let s = Float(readLine()!) else {
    fatalError("To nie jest liczba")
}
switch (s) {
    case 2.0..<3.0: print("0")
    case 3.0..<4.0: print("100")
    case 4.0..<4.5: print("150")
    case 4.5...5.0: print("200")
    default: print("Nieprawidlowa srednia!")
}
