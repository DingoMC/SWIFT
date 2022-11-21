//
//  main.swift
//  Kolokwium 1 - wszystkie zadania
//  Marcin Basak - 095365
//  Created by student on 21/11/2022.
//

import Foundation

// ZADANIE 1 //
print("Zadanie 1\nPodaj PESEL: ", terminator: "")

let pesel : String = readLine()!

if (pesel.count != 11) {
    fatalError("Niepoprawny PESEL!")
}

var c : Int = 0
var m : [Int] = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
for i in 0...9 {
    let cyfra = Int(pesel[pesel.index(pesel.startIndex, offsetBy: i)].asciiValue! - 48)
    c += (cyfra * m[i])
}

c %= 10
c = 10 - c

var ostatnia = Int(pesel[pesel.index(pesel.endIndex, offsetBy: -1)].asciiValue! - 48)
if (c == ostatnia) {
    print("PESEL poprawny")
}
else {
    print("Niepoprawny PESEL!")
}

// ZADANIE 2

var arr : [Int] = []
var n : Int = 0

print("\nZadanie 2\nPodaj dlugosc tablicy", terminator: ": ")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
if (x <= 0) {
    fatalError("Bledna dlugosc tablicy!")
}
n = x
for i in 1...n {
    print("Podaj \(i). element", terminator: ": ")
    guard let x = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    arr.append(x)
}
var okno : [Int] = []
var o : Int = 0
print("Podaj wielkosc okna <3,7>", terminator: ": ")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
if (x < 3 || x > 7) {
    fatalError("Bledny rozmiar okna!")
}
o = x
for i in 1...o {
    print("Podaj \(i). element okna", terminator: ": ")
    guard let x = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    okno.append(x)
}
var sr : [Double] = []
for i in 0..<(n + o - 1) {
    var s : Double = 0.0
    for j in 0..<o {
        let ind : Int = i - o + j + 1
        var val : Int = 0
        if (ind >= 0 && ind < n) {
            val = arr[ind]
        }
        s += Double(val * okno[j])
    }
    sr.append(s/Double(o))
}
for i in 0..<sr.count {
    print(sr[i], terminator: ", ")
}

// ZADANIE 3
print("\nZadanie 3\n")
var tab2d : [[Int]] = [[]]
var n2 : Int = Int.random(in: 10...20)
var max_1 = -100
var max_2 = -100
var s_parz_w = 0
var s_nieparz_k = 0
var lk_mi = 0
for i in 0..<n2 {
    tab2d.append([])
    for j in 0..<n2 {
        if (i != j) {
            tab2d[i].append(Int.random(in: -100...100))
        }
        else {
            let r : Int = Int.random(in: 0...1)
            if (r == 0) {
                tab2d[i].append(-1)
            }
            else {
                tab2d[i].append(1)
            }
        }
        if (tab2d[i][j] > max_1) {
            max_2 = max_1
            max_1 = tab2d[i][j]
        }
        else if (tab2d[i][j] > max_2 && tab2d[i][j] != max_1) {
            max_2 = tab2d[i][j]
        }
        if (i % 2 == 0) {
            s_parz_w += tab2d[i][j]
        }
        if (j % 2 != 0) {
            s_nieparz_k += tab2d[i][j]
        }
        if (tab2d[i][j] < i * j) {
            lk_mi += 1
        }
    }
}
print("Dwie najwieksze liczby: \(max_1), \(max_2)")
print("Stosunek sumy liczb lezacych na parzystych wierszach do sumy liczb lezacych na nieparzystych kolumnach: \(Double(s_parz_w/s_nieparz_k))")
print("Liczba komorek, ktorych wartosc jest mniejsza od iloczynu indeksu wiersza i kolumny: \(lk_mi)")
/*for i in 0..<n2 {
    print("[", terminator: "")
    for j in 0..<n2 {
        print(tab2d[i][j], terminator: ", ")
    }
    print("]")
}*/
