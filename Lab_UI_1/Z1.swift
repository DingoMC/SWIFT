import SwiftUI

struct ContentView: View {
    @State var dzien: String = ""
    @State var dzienWybor: String = ""
    @State var dzienOK: String = ""
    let nazwy : [String] = ["poniedzialek", "wtorek", "sroda", "czwartek", "piatek", "sobota", "niedziela"]
    var body: some View {
        VStack {
            Text("Podaj wybrany dzien tygodnia").foregroundColor(.red)
            TextField("Wpisz dzien tygodnia", text: $dzien)
            Button(action: {
                dzienWybor=dzien
                if nazwy.contains(dzien.lowercased()) {
                    dzienOK = "Prawidlowy dzien tygodnia"
                }
                else {
                    dzienOK = "Nieprawidlowy dzien tygodnia"
                }
            }, label: {Text("Zatwierdz wybor")}).background(Color.green)
            Text("Wybrano: \(dzienWybor)")
            Text("\(dzienOK)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
