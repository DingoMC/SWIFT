import Foundation

let now : Int = 2022
var rok : Int = 0
print("Podaj rok urodzenia: ")
if let tmp = Int(readLine()!) {
    rok = tmp
}
print("Masz " + String(now - rok) + " lat")
