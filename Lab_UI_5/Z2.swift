import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: Marka1(), label: {
                Text("BMW").font(.title)
            })
            NavigationLink(destination: Marka2(), label: {
                Text("Mercedes").font(.title)
            })
            NavigationLink(destination: Marka3(), label: {
                Text("Volvo").font(.title)
            })
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct Marka1: View {
    var body: some View {
        VStack {
            Text("Modele").font(.title)
            Text("iX")
            Text("iX M60")
            Text("i7")
            Text("i5")
        }
    }
}

struct Marka1_Previews: PreviewProvider {
    static var previews: some View {
        Marka1()
    }
}

struct Marka2: View {
    var body: some View {
        VStack {
            Text("Modele").font(.title)
            Text("AMG GT Coupe")
            Text("Citan")
            Text("CLA")
            Text("CLS")
        }
    }
}

struct Marka2_Previews: PreviewProvider {
    static var previews: some View {
        Marka2()
    }
}

struct Marka3: View {
    var body: some View {
        VStack {
            Text("Modele").font(.title)
            Text("C40")
            Text("EX 90")
            Text("S60")
            Text("S90")
        }
    }
}

struct Marka3_Previews: PreviewProvider {
    static var previews: some View {
        Marka3()
    }
}
