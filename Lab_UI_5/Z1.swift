import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                FirstView()
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

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}

struct FirstView: View {
    var body: some View {
        VStack {
            Triangle()
                .fill(.yellow)
                .frame(width: 100, height: 200)
            NavigationLink(destination: SecondView(), label: {
                Text("Nastepny").font(.title)
            })
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle().fill(.teal).frame(width: 200, height: 200)
                Rectangle().fill(.yellow).frame(width:90, height: 90).offset(x: 45, y: -45)
                Rectangle().fill(.white).frame(width:90, height: 90).offset(x: 45, y: 45)
                Rectangle().fill(.gray).frame(width:90, height: 180).offset(x: -45)
            }
            NavigationLink(destination: ThirdView(), label: {
                Text("Nastepny").font(.title)
            })
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle().fill(.white).border(.blue, width: 2).frame(width: 300, height: 200)
                RoundedRectangle(cornerRadius: 40).fill(.blue).frame(width: 200, height: 200)
                Capsule().fill(.green).frame(width: 200, height: 100)
                Circle().fill(.red).frame(width:60, height: 60)
            }
            Text("Trzeci").font(.title)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
