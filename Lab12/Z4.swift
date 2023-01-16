import Foundation

enum ATMErrors : Error {
    case UnsufficientFunds
    case ATMEmpty
    case DailyLimitExceeded
    case NoBankNotes
    case Other
}

class ATM {
    var BankNotes : [(n: Int, c: Int)] = []
    func total () -> Int {
        var t : Int = 0
        for i in 0..<BankNotes.count {
            t += BankNotes[i].n * BankNotes[i].c
        }
        return t
    }
    init(bn : [(n: Int, c: Int)]) {
        self.BankNotes = bn
    }
}

func validate (b : ATM, c : Int, x : Int, dailyLimit : Int) throws {
    guard x <= c else {
        throw ATMErrors.UnsufficientFunds
    }
    guard x <= dailyLimit else {
        throw ATMErrors.DailyLimitExceeded
    }
    guard x <= b.total() else {
        throw ATMErrors.ATMEmpty
    }
}

var b : ATM = ATM(bn: [(n: 10, c: 5), (n: 50, c: 3), (n: 100, c: 4)])
var c : Int = 450
var dailyLimit : Int = 5000

guard let x = Int(readLine()!) else {
    fatalError("Bledna kwota")
}


