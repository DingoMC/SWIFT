import Foundation

struct Point {
    var x : Double
    var y : Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

func wczytaj () -> Point {
    print("Podaj X punktu", terminator: ": ")
    guard let x = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    print("Podaj Y punktu", terminator: ": ")
    guard let y = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    return Point(x: x, y: y)
}

func distance (p1 : Point, p2 : Point) -> Double {
    return sqrt(pow(p2.x - p1.x, 2) + pow(p2.y - p1.y, 2))
}

func quarter (p : Point) -> Int {
    if (p.x >= 0) {
        if (p.y >= 0) {
            return 1
        }
        return 4
    }
    if (p.y >= 0) {
        return 2
    }
    return 3
}

func isInside (p : Point, s : Double) -> Void {
    if (abs(p.x) > s || abs(p.y) > s) {
        print("Punkt poza kwadratem")
    }
    else if (abs(p.x) < s && abs(p.y) < s) {
        print("Punkt w kwadracie")
    }
    else {
        print("Punkt na krawedzi kwadratu")
    }
        
}

var p1 : Point = wczytaj()
var p2 : Point = wczytaj()

print("Odleglosc \(distance(p1: p1, p2: p2))")
print("Cwiartki: \(quarter(p: p1)), \(quarter(p: p2))")
print("Czy w kwadracie o wierzcholku (3,3):")
isInside(p: p1, s: 3)
isInside(p: p2, s: 3)
