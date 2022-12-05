import Foundation

struct rzutOszczepem {
    var idOsoby : Int
    var proba1 : Double
    var proba2 : Double
    var proba3 : Double
    init(idOsoby: Int, proba1: Double, proba2: Double, proba3: Double) {
        self.idOsoby = idOsoby
        self.proba1 = proba1
        self.proba2 = proba2
        self.proba3 = proba3
    }
}

var o : [rzutOszczepem] = []

for i in 1...4 {
    print("Osoba \(i), proba 1", terminator: ": ")
    guard let p1 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    print("Osoba \(i), proba 2", terminator: ": ")
    guard let p2 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    print("Osoba \(i), proba 3", terminator: ": ")
    guard let p3 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    o.append(rzutOszczepem(idOsoby: i, proba1: p1, proba2: p2, proba3: p3))
}

var sr : [Double] = []
var max : Double = 0.0
var max_i : Int = 0
var min : Double = 2147483647.0
var min_i : Int = 0

for i in 0..<4 {
    sr.append((o[i].proba1 + o[i].proba2 + o[i].proba3) / 3.0)
    if (sr[i] > max) {
        max = sr[i]
        max_i = i
    }
    if (sr[i] < min) {
        min = sr[i]
        min_i = i
    }
}
print("Zawodnik z najwieksza srednia: Id: \(o[max_i].idOsoby), {\(o[max_i].proba1), \(o[max_i].proba2), \(o[max_i].proba3)}")
o.remove(at: min_i)
