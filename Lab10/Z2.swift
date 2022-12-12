import Foundation

func add (a: Double, b: Double) -> Double {
    return a + b
}
func sub (a: Double, b: Double) -> Double {
    return a - b
}
func mul (a: Double, b: Double) -> Double {
    return a * b
}

func div (a: Double, b: Double) -> Double {
    if b == 0 {
        fatalError("Nie da sie!")
    }
    return a / b
}
func root (a: Double) -> Double {
    if a < 0 {
        fatalError("Wynik nie jest rzeczywisty!")
    }
    return sqrt(a)
}



print("1 - dodawanie\n2 - odejmowanie\n3 - mnozenie\n4 - dzielenie\n5 - pierwiastkowanie")

guard let o = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
if (o < 1 || o > 5) {
    fatalError("Nieprawidlowa opcja")
}
print("Podaj liczbe", terminator: ": ")
guard let n1 = Double(readLine()!) else {
    fatalError("To nie jest liczba!")
}
if (o < 5) {
    print("Podaj druga liczbe", terminator: ": ")
    guard let n2 = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    switch (o) {
    case 1:
        print("Wynik: \(add(a: n1, b: n2))")
        break
    case 2:
        print("Wynik: \(sub(a: n1, b: n2))")
        break
    case 3:
        print("Wynik: \(mul(a: n1, b: n2))")
        break
    case 4:
        print("Wynik: \(div(a: n1, b: n2))")
        break
    default:
        print("Nie da sie!")
    }
}
else {
    print("Wynik: \(root(a: n1))")
}
