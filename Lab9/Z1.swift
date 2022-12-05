import Foundation

struct liczbaZespolona {
    var Re : Double
    var Im : Double
    init(Re: Double, Im: Double) {
        self.Re = Re
        self.Im = Im
    }
}

print("Podaj czesc rzeczywista liczby 1", terminator: ": ")
guard let a = Double(readLine()!) else {
    fatalError("Nieprawidlowa wartosc!")
}
print("Podaj czesc urojona liczby 1", terminator: ": ")
guard let b = Double(readLine()!) else {
    fatalError("Nieprawidlowa wartosc!")
}
var z1 = liczbaZespolona(Re: a, Im: b)

print("Podaj czesc rzeczywista liczby 2", terminator: ": ")
guard let a = Double(readLine()!) else {
    fatalError("Nieprawidlowa wartosc!")
}
print("Podaj czesc urojona liczby 2", terminator: ": ")
guard let b = Double(readLine()!) else {
    fatalError("Nieprawidlowa wartosc!")
}
var z2 = liczbaZespolona(Re: a, Im: b)

print("Wybierz opcje:\n1 --> Dodawanie\n2 --> odejmowanie\n3 --> mnozenie\n", terminator: "Opcja: ")
guard let o = Int(readLine()!) else {
    fatalError("Nieprawidlowa wartosc!")
}
switch (o) {
case 1:
    var w = liczbaZespolona(Re: z1.Re+z2.Re, Im: z2.Im+z2.Im)
    print("Wynik: \(w.Re) + \(w.Im)i")
    break
    
case 2:
    var w = liczbaZespolona(Re: z1.Re-z2.Re, Im: z2.Im-z2.Im)
    print("Wynik: \(w.Re) + \(w.Im)i")
    break
case 3:
    var w = liczbaZespolona(Re: z1.Re*z2.Re-z1.Im*z2.Im, Im: z1.Re*z2.Im+z2.Re*z1.Im)
    print("Wynik: \(w.Re) + \(w.Im)i")
    break
default:
    fatalError("Nieprawidlowa opcja")
}
