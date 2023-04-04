import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            FirstView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstView: View {
    @State var sok : String = ""
    @State var kawa : String = ""
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(wyb_soku: $sok), label: {
                    Text("Wybierz Sok").font(.title)
                })
                Text("Wybrany sok: \(sok)")
                NavigationLink(destination: ThirdView(wyb_kawy: $kawa), label: {
                    Text("Wybierz kawe").font(.title)
                })
                Text("Wybrana kawa: \(kawa)")
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

struct SecondView: View {
    @State var soki : [String] = ["Jablkowy", "Pomaranczowy", "Malinowy"]
    @Binding var wyb_soku : String
    var body: some View {
        VStack {
            Text("Wybor soku").font(.title)
            HStack(alignment: .center, spacing: 0) {
                Button(action: {
                    wyb_soku = soki[0]
                    
                }) {
                    Image("sok_jablkowy").resizable()
                }.frame(width: 150, height: 150)
                Button(action: {
                    wyb_soku = soki[1]
                }) {
                    Image("sok_pomaranczowy").resizable()
                }.frame(width: 150, height: 150)
                Button(action: {
                    wyb_soku = soki[2]
                }) {
                    Image("sok_malinowy").resizable()
                }.frame(width: 150, height: 150)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(wyb_soku: .constant(""))
    }
}

struct ThirdView: View {
    @State var kawy : [String] = ["Espresso", "Latte Machiatto", "Cappucino"]
    @Binding var wyb_kawy : String
    var body: some View {
        VStack {
            Text("Wybor kawy").font(.title)
            Picker(selection: $wyb_kawy, label: Text("Kawa"), content: {
                    ForEach(kawy, id: \.self) {Text($0)}
            }).pickerStyle(MenuPickerStyle())
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(wyb_kawy: .constant(""))
    }
}
