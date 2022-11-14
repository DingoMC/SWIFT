import Foundation

let mac: [[Int]] = [[10, 20, 30], [40, 50, 60]]
print("[", terminator: "")
for i in 0 ..< mac.count {
    print("[", terminator: "")
    for j in 0 ..< mac[i].count {
        print("\(mac[i][j])", terminator:", ")
    }
    print("]", terminator: ", ")
}
print("]")
