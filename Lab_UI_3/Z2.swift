import SwiftUI

struct ContentView: View {
    @State var wyb_r : String = ""
    @State var wyb_f : String = ""
    @State var liczba : Int = 0
    @State var dost : String = ""
    @State var i = 0;
    @State var r = ["205/70 R17", "220/80 R16", "215/75 R16"]
    @State var f = ["Pirelli", "Goodyear", "Dunlop"]
    @State var m = [[5, 2, 8], [0, 3, 6], [1, 4, 7]]
    var body: some View {
        VStack {
            Picker(selection: $wyb_r, label: Text("Rozmiar"), content: {
                ForEach(r, id: \.self) {Text($0)}
            }).pickerStyle(MenuPickerStyle())
            Picker(selection: $wyb_f, label: Text("Firma"), content: {
                ForEach(f, id: \.self) {Text($0)}
            }).pickerStyle(MenuPickerStyle())
            HStack(alignment: .center) {
                Text("Liczba Opon:")
                TextField("liczba", text: Binding(
                    get: {String(liczba)}, set: {liczba = Int($0) ?? 0})).frame(width: 40)
            }
            Button(action: {
                if m[f.firstIndex(of: wyb_f) ?? 0][r.firstIndex(of: wyb_r) ?? 0] >= liczba {
                    dost = "Opony sa dostepne"
                }
                else {
                    dost = "Opony nie sa dostepne"
                }
            }){Text("Sprawdz")}
            Text("\(dost)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
