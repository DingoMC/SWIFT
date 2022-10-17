import Foundation

var ciag : String = ""
var znak : Character = "0"
var liczba : Int = 0

print("Podaj ciag znakow: ")
ciag = readLine()!
print("Podaj znak: ")
let z : String = readLine()!
znak = z[z.startIndex]
print("Podaj liczbe: ")
if let tmp = Int(readLine()!) {
    liczba = tmp
}
if (ciag.hasPrefix(String(znak))) {
    print("Znak \(znak) znajduje sie na poczatku ciagu")
}
if (ciag.hasSuffix(String(znak))) {
    print("Znak \(znak) znajduje sie na koncu ciagu")
}
if (liczba < ciag.count) {
    if (String(ciag[ciag.index(ciag.startIndex, offsetBy: liczba)]) == String(znak)) {
        print("Znak \(znak) znajduje sie na pozycji o \(liczba) dalej od pocztaku ciagu")
    }
    if (String(ciag[ciag.index(ciag.endIndex, offsetBy: -liczba-1)]) == String(znak)) {
        print("Znak \(znak) znajduje sie na pozycji o \(liczba) dalej od konca ciagu")
    }
}
