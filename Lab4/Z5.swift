import Foundation

print("Podaj kod pocztowy")
let kod = readLine()
switch (kod!) {
  case let x where (x.hasPrefix("09") || x.hasPrefix("20") || x.hasPrefix("21") || x.hasPrefix("22") || x.hasPrefix("23") || x.hasPrefix("24")): print("To jest kod pocztowy z woj. lubelskiego")
  default: print("To nie jest kod pocztowy z woj. lubelskiego")
}
