import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            FirstView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstView: View {
    @State var kolor : Color = Color.black
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(wyb_k: $kolor), label: {
                    Text("Kolor").font(.title)
                })
                
                Text("Kolorowy tekst").foregroundColor(kolor)
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

func colorString (c : Color) -> String {
    switch c {
    case Color.red:
        return "Czerwony"
    case Color.yellow:
        return "Zolty"
    case Color.green:
        return "Zielony"
    default:
        return "Czarny"
    }
}


struct SecondView: View {
    @State var kolory : [Color] = [Color.black, Color.red, Color.yellow, Color.green]
    @Binding var wyb_k : Color
    var body: some View {
        VStack {
            Picker(selection: $wyb_k, label: Text("Kolor"), content: {
                                ForEach(kolory, id: \.self) {Text(colorString(c:$0))}
                            }).pickerStyle(MenuPickerStyle())
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(wyb_k: .constant(Color.black))
    }
}
