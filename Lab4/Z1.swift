import Foundation

print("Podaj rok")
guard let num = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if ((num % 4 == 0 && num % 100 != 0) || num % 400 == 0) {
    print("Ten rok jest przestepny")
}
else {
    print("Ten rok nie jest przestepny")
}
