import Foundation

func show (l : (Int, Int, Int)) -> Void {
    print(l)
}

func trzy () -> (Int, Int, Int) {
    return (Int.random(in: 1...250), Int.random(in: 1...250), Int.random(in: 1...250))
}

func max3 (l : (Int, Int, Int)) -> Int {
    var arr : [Int] = [l.0, l.1, l.2]
    return arr.max()!
}

func min3 (l : (Int, Int, Int)) -> Int {
    var arr : [Int] = [l.0, l.1, l.2]
    return arr.min()!
}

func minmax3 (l : (Int, Int, Int)) -> (Int, Int) {
    var arr : [Int] = [l.0, l.1, l.2]
    return (arr.min()!, arr.max()!)
}

var liczby : (Int, Int, Int) = trzy()
show(l: liczby)
print(max3(l: liczby))
print(min3(l: liczby))
print(minmax3(l: liczby))
