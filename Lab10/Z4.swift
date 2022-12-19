import Foundation

func wczytaj (n : Int) -> [Int] {
    var tab : [Int] = []
    for i in 1...n {
        print("Podaj \(i). element", terminator: ": ")
        guard let x = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        tab.append(x)
    }
    return tab
}

func wyswietl (tab : [Int]) -> Void {
    print("[", terminator: "")
    for i in 0..<tab.count {
        print(tab[i], terminator: ", ")
    }
    print("]")
}

func tabmin (tab: [Int]) -> (Int, Int) {
    var min : Int = tab[0]
    var min_i : Int = 0
    for i in 1..<tab.count {
        if (tab[i] < min) {
            min = tab[i]
            min_i = i
        }
    }
    return (min, min_i)
}

func tabmax (tab: [Int]) -> (Int, Int) {
    var max : Int = tab[0]
    var max_i : Int = 0
    for i in 1..<tab.count {
        if (tab[i] > max) {
            max = tab[i]
            max_i = i
        }
    }
    return (max, max_i)
}

func swap_minmax (tab: [Int]) -> [Int] {
    var tab2 = tab
    let min_i = tabmin(tab: tab).1
    let max_i = tabmax(tab: tab).1
    tab2.swapAt(min_i, max_i)
    return tab2
}

func mean (tab: [Int]) -> Double {
    var s : Double = 0.0
    for i in 0..<tab.count {
        s += Double(tab[i])
    }
    return s/Double(tab.count)
}

print ("Podaj liczbe elementow tablicy", terminator: ": ")
guard let n = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if (n < 1) {
    fatalError("Bledna liczba elementow")
}

var tab : [Int] = wczytaj(n: n)

wyswietl(tab: tab)
print(tabmax(tab: tab))
print(tabmin(tab: tab))
wyswietl(tab: swap_minmax(tab: tab))
print(mean(tab: tab))
