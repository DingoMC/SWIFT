import Foundation

let L1 : String = readLine()!
var p : Bool = true

for i in 0...(1 + L1.count/2) {
    if (L1[L1.index(L1.startIndex, offsetBy: i)] != L1[L1.index(L1.endIndex, offsetBy: -i-1)]) {
        p = false
        print("To nie jest palindrom")
        break
    }
}
if (p) {
    print("To jest palindrom")
}
