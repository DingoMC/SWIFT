import Foundation

var tab: [Int] = []
for _ in 1...10 {
    tab.append(Int.random(in: 1...100))
}
print("[", terminator: "")
for i in tab {
    print(i, terminator: ", ")
}
print("]")
print("Podaj liczbe 1")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
tab.insert(liczba, at: 0)
print("[", terminator: "")
for i in tab {
    print(i, terminator: ", ")
}
print("]")
print("Podaj liczbe 2")
guard let liczba2 = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
var last : Int = tab.count - 1
tab.insert(liczba2, at: Int.random(in: 0...last))
print("[", terminator: "")
for i in tab {
    print(i, terminator: ", ")
}
print("]")
