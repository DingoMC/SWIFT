import Foundation

var imie : String = ""
var dimie : String = ""
var nazw : String = ""
var rok : Int = 0
print("Podaj imie: ")
imie = readLine()!
print("Podaj drugie imie: ")
dimie = readLine()!
print("Podaj nazwisko: ")
nazw = readLine()!
print("Podaj rok urodzenia: ")
if let tmp = Int(readLine()!) {
    rok = tmp
}
var x1 : String = imie + " " + dimie + " " + nazw + " - " + String(rok)
print(x1)
let dimie_begin : Int = imie.count + 1
let dimie_end : Int = imie.count + 2 + dimie.count
var range = x1.index(x1.startIndex, offsetBy: dimie_begin) ..< x1.index(x1.startIndex, offsetBy: dimie_end)
x1.removeSubrange(range)
print(x1)
let rok_begin : Int = -String(rok).count
range = x1.index(x1.endIndex, offsetBy: rok_begin) ..< x1.index(x1.endIndex, offsetBy: 0)
x1.removeSubrange(range)
let wiek : Int = 2022 - rok
x1.append(String(wiek))
print(x1)
if imie.hasPrefix("D") {
    print("Imie zaczyna sie na litere D")
}
