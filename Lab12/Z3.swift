enum MathErrors : Error {
    case DivisionBy0
    case SqrtNegative
}

func validateDivision (a : Double, b : Double) throws {
    guard b != 0 else {
        throw MathErrors.DivisionBy0
    }
}

func validateSqrt (a : Double) throws {
    guard a > 0 else {
        throw MathErrors.SqrtNegative
    }
}

var a : Double = 5.0
var b : Double = 0.0
var c : Double = -0.1

do {
    try validateDivision(a: a, b: b)
    print("\(a)/\(b) = \(a/b)")
} catch MathErrors.DivisionBy0 {
    print("Nie da sie!")
} catch {
    print("Cos innego")
}

do {
    try validateSqrt(a: c)
    print("Sqrt(\(c)) = \(sqrt(c))")
} catch MathErrors.SqrtNegative {
    print("4-ta gestosc!")
} catch {
    print("Cos innego")
}
