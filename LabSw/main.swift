// Drzewo
import Foundation

class Drzewo {
    var h : Int = 0
    var rok : Int = 0
    var rodzaj : RodzajDrzewa?
    init(h: Int, rok: Int, rodzaj: RodzajDrzewa? = nil) {
        self.h = h
        self.rok = rok
        self.rodzaj = rodzaj
    }
    
    func show () -> Void {
        print("Rodzaj: \(self.rodzaj!), Rok: \(self.rok), Wysokosc: \(h)m")
    }
}
// Choinka
class Choinka : Drzewo {
    var levels : Int = 0
    var rootHeight : Int = 0
    var oCount : Int = 0
    var oType : [Ozdoba?] = []
    init (levels: Int, rootHeight : Int, oCount : Int, oType : [Ozdoba?] = [], h : Int, rok : Int, rodzaj: RodzajDrzewa? = nil) {
        self.levels = levels
        self.rootHeight = rootHeight
        self.oCount = oCount
        self.oType = oType
        super.init(h: h, rok: rok, rodzaj: rodzaj)
    }
    
    override func show () -> Void {
        print("Poziomy: \(levels), Pien: \(rootHeight), Liczba ozdob: \(oCount), Ozdoby: \(oType)")
    }
    func draw (layercount : Int, levelcount : Int) -> Void {
        let length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for _ in 1...spacecount {
                    print(" ",terminator: "")
                }
                for _ in 1...starcount {
                    print("*",terminator: "")
                }
                print()
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
                
            } else {
                starcount -= 4
                spacecount += 2
            }
        }
        spacecount = length;
        for _ in 1...self.rootHeight {
            for _ in 1...spacecount-1 {
                print(" ",terminator: "")
            }
            for _ in 1...3 {
                print("#",terminator: "")
            }
            print()
        }
    }
    func drawDecorated (layercount : Int, levelcount : Int) {
        var cnt = self.oCount
        let length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for _ in 1...spacecount {
                    print(" ",terminator: "")
                }
                for i in 1...starcount {
                    if (i % 2 == 0 && cnt > 0) {
                        let r : Int = Int.random(in: 0..<oType.count)
                        let o : String = self.oType[r]?.rawValue ?? "o"
                        print("\(o)", terminator: "")
                        cnt -= 1
                    }
                    else {
                        print("*",terminator: "")
                    }
                }
                print()
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
                
            } else {
                starcount -= 4
                spacecount += 2
            }
        }
        spacecount = length;
        for _ in 1...self.rootHeight {
            for _ in 1...spacecount-1 {
                print(" ",terminator: "")
            }
            for _ in 1...3 {
                print("#",terminator: "")
            }
            print()
        }
    }
    func ozdobyDoKupienia (layercount : Int, levelcount : Int) -> Int {
        var cnt = 0;
        let length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for i in 1...starcount {
                    if (i % 2 == 0) {
                        cnt += 1
                    }
                }
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
                
            } else {
                starcount -= 4
                spacecount += 2
            }
        }
        return cnt - self.oCount
    }
}
// main
enum Ozdoba : String, CaseIterable {
    case bombka = "b"
    case cukierek = "c"
    case pierniczek = "p"
    case zabawka = "z"
}
enum RodzajDrzewa : Int, CaseIterable {
    case lisciaste = 1
    case iglaste = 2
}

var ch : Choinka = Choinka(levels: 2, rootHeight: 3, oCount: 30, oType: [Ozdoba.bombka, Ozdoba.cukierek, Ozdoba.pierniczek, Ozdoba.zabawka], h: 5, rok: 5, rodzaj: RodzajDrzewa.iglaste)

ch.drawDecorated(layercount: 5, levelcount: 4)
print(ch.ozdobyDoKupienia(layercount: 5, levelcount: 4))
