import SwiftUI

struct ContentView: View {
    @State var i = 0;
    var body: some View {
        VStack {
            Text("Wcisnij przycisk")
            Panel_View(i: $i)
            Text("Wcisnieto \(i) razy")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Panel_View: View {
    @Binding var i : Int
    var body: some View {
        Button(action: {i += 1}){Text("Wcisnij")}
        
    }
}

struct Panel_View_Previews: PreviewProvider {
    static var previews: some View {
        Panel_View(i: .constant(0))
    }
}
