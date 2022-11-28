import Foundation
enum Ocena : Double, CaseIterable {
case dwa = 2.0
case trzy = 3.0
case trzypol = 3.5
case cztery = 4.0
case czterypol = 4.5
case piec = 5.0
}
var studenci : [(nazwisko: String, ocena1: Ocena, ocena2: Ocena, ocena3: Ocena)] = []
for i in 1...3 {
    print("Nazwisko studenta \(i)", terminator: ": ")
    let n : String = readLine()!
    print("Ocena 1 studenta \(i)", terminator: ": ")
    guard let o = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    var o1 : Double = 0.0
    for i in Ocena.allCases {
        if (o == i.rawValue) {
            o1 = o
            break
        }
    }
    print("Ocena 2 studenta \(i)", terminator: ": ")
    guard let o = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    var o2 : Double = 0.0
    for i in Ocena.allCases {
        if (o == i.rawValue) {
            o2 = o
            break
        }
    }
    print("Ocena 3 studenta \(i)", terminator: ": ")
    guard let o = Double(readLine()!) else {
        fatalError("To nie jest liczba!")
    }
    var o3 : Double = 0.0
    for i in Ocena.allCases {
        if (o == i.rawValue) {
            o3 = o
            break
        }
    }
    studenci.append((nazwisko: n, ocena1: Ocena(rawValue: o1)!, ocena2: Ocena(rawValue: o2)!, ocena3: Ocena(rawValue: o3)!))
}
var s : [Double] = []
for i in 0..<3 {
    s.append((studenci[i].ocena1.rawValue + studenci[i].ocena2.rawValue + studenci[i].ocena3.rawValue) / 3.0)
}
var s2 : [(student: (nazwisko: String, ocena1: Ocena, ocena2: Ocena, ocena3: Ocena), srednia: Double)] = []
for i in 0..<3 {
    s2.append((student: studenci[i], srednia: s[i]))
}
let s3 = s2.sorted {
    $0.srednia > $1.srednia
}
for st in s3 {
    print("\(st.student.nazwisko) - \(st.srednia)")
}
