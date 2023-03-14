import SwiftUI

struct ContentView: View {
    @State var waluty : [String] = ["PLN", "USD", "EUR", "GBP", "CHF"]
    @State var wyb_k : String = ""
    @State var wyb_s : String = ""
    @State var wartosc : Double = 0.00
    @State var wynik : Double = 0.00
    @State var kupno : [Double] = [1.0, 3.9, 4.8, 5.33, 4.81]
    @State var przelicznik : Double = 1.005
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Basak Kantor").foregroundColor(.white).font(.title)
                Spacer()
            }.background(.purple)
            
            Spacer()
            HStack {
                Text("Wartosc:")
                TextField("liczba", text: Binding(
                    get: {String(wartosc)}, set: {wartosc = Double($0) ?? 0.00})).frame(width: 55)
                Picker(selection: $wyb_s, label: Text("Sprzedaz"), content: {
                    ForEach(waluty, id: \.self) {Text($0)}
                }).pickerStyle(MenuPickerStyle())
            }
            Button(action: {
                wynik = wartosc * kupno[waluty.firstIndex(of: wyb_s) ?? 0] * (1.0 / (kupno[waluty.firstIndex(of: wyb_k) ?? 0] * przelicznik))
            }){Text("Oblicz")}
            HStack {
                Text("Otzrymasz: ")
                Text(String(format: "%.2f", wynik))
                Picker(selection: $wyb_k, label: Text("Kupno"), content: {
                                ForEach(waluty, id: \.self) {Text($0)}
                            }).pickerStyle(MenuPickerStyle())
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
