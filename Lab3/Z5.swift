import Foundation

var ciag1 : String = ""
var ciag2 : String = ""

print("Podaj 1 ciag znakow: ")
ciag1 = readLine()!
print("Podaj 2 ciag znakow: ")
ciag2 = readLine()!
if (ciag1 == ciag2) {
    print("Ciagi sa identyczne")
}
var prefiks : String = ""
print("Podaj prefiks: ")
prefiks = readLine()!

if (ciag1.hasPrefix(prefiks)) {
    print("Prefiks wystepuje w ciagu 1")
}
if (ciag2.hasPrefix(prefiks)) {
    print("Prefiks wystepuje w ciagu 2")
}

var sufiks : String = ""
print("Podaj sufiks: ")
sufiks = readLine()!

if (ciag1.hasSuffix(sufiks)) {
    print("Sufiks wystepuje w ciagu 1")
}
if (ciag2.hasSuffix(sufiks)) {
    print("Sufiks wystepuje w ciagu 2")
}
