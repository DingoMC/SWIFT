import SwiftUI

struct Car {
    var brand: String
    var model: String
    var logo: Image
}

struct ContentView: View {
    @State var auta : [Car] = [
        Car(brand: "Opel", model: "Corsa", logo: Image("auto1")),
    Car(brand: "Volkswagen", model: "Golf 4", logo: Image("auto2")),
    Car(brand: "Toyota", model: "Verso", logo: Image("auto3"))]
    @State var deleted : [Int] = []
    var body: some View {
        VStack {
            List {
                ForEach(0..<auta.count) {
                    a in
                    if (!deleted.contains(a)) {
                        CarView(auto: $auta[a]).swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button(action: {
                                deleted.append(a)
                            }) {
                                Image(systemName: "trash")
                            }
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CarView: View {
    @Binding var auto : Car
    var body: some View {
        HStack {
            Text("\(auto.brand) \(auto.model)")
            auto.logo.resizable().frame(width: 100, height: 60)
        }
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(auto: .constant(Car(brand: "", model: "", logo: Image(""))))
    }
}
