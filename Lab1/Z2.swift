import SwiftUI

struct ContentView: View {
    @State private var a : String = ""
    @State private var b : String = ""
    @State private var c : String = ""
    @State private var s : Int = 0
    @State private var avg : Double = 0.0
    var body: some View {
        VStack {
            TextField("0", text:$a)
            TextField("1", text:$b)
            TextField("2", text:$c)
            Button("Oblicz") {
                s = Int(a)! + Int(b)! + Int(c)!
                avg = Double(s) / 3.0
            }
            Text(String(s))
            Text(String(avg))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
