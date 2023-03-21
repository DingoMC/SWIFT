import SwiftUI

func colorString (c : Color) -> String {
    switch c {
    case Color.red:
        return "Czerwony"
    case Color.yellow:
        return "Zolty"
    case Color.green:
        return "Zielony"
    case Color.blue:
        return "Niebieski"
    case Color.purple:
        return "Fioletowy"
    default:
        return "Czarny"
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

func shapeShifter (ksztalt: String, kolor: Color, xr: Int, yr: Int) -> some View {
    switch ksztalt {
    case "Trojkat":
        return AnyView(Triangle()
            .fill(kolor)
            .frame(width: CGFloat(xr), height: CGFloat(yr)))
    case "Kolo":
        return AnyView(Circle()
            .fill(kolor)
            .frame(width: CGFloat(xr), height: CGFloat(yr)))
    default:
        return AnyView(Rectangle()
            .fill(kolor)
            .frame(width: CGFloat(xr), height: CGFloat(yr)))
    }
}

struct ContentView: View {
    @State var ksztalty : [String] = ["Prostokat", "Kolo", "Trojkat"]
    @State var wyb_kszt : String = ""
    @State var kolory = [Color.red, Color.yellow, Color.green, Color.blue, Color.purple, Color.black]
    @State var wyb_kol : Color = Color.black
    @State var xr : Int = 0
    @State var yr : Int = 0
    @State var rr = false
    var body: some View {
        VStack {
            Picker(
                selection: $wyb_kszt,
                label: Text("Ksztalt"),
                content: {
                    ForEach(ksztalty, id: \.self) {
                        Text($0)
                        
                    }}).pickerStyle(MenuPickerStyle())
            Picker(selection: $wyb_kol, label: Text("Ksztalt"), content: {ForEach(kolory, id: \.self) {Text(colorString(c:$0))}}).pickerStyle(MenuPickerStyle())
            HStack {
                Text("Ramka:")
                TextField("xr", text: Binding(
                                    get: {String(xr)}, set: {xr = Int($0) ?? 0})).frame(width: 35)
                Text("x")
                TextField("yr", text: Binding(
                                    get: {String(yr)}, set: {yr = Int($0) ?? 0})).frame(width: 35)
            }
            Toggle("Rysuj ramke", isOn: $rr).toggleStyle(SwitchToggleStyle(tint: .green))
            Rectangle().foregroundColor(Color.black.opacity(0)).frame(width: CGFloat(xr), height: CGFloat(yr)).border(Color.black, width: (rr ? 1 : 0)).overlay( shapeShifter(ksztalt: wyb_kszt, kolor: wyb_kol, xr: xr, yr: yr))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
