import SwiftUI

struct ContentView: View {
    @State var offset: CGSize = .zero
    @GestureState var isLongPress = false
    var body: some View {
        let longPress = LongPressGesture()
            .updating($isLongPress, body: {value, state, transaction in state = value}).simultaneously(with: DragGesture()
                .onChanged{self.offset = $0.translation})
        VStack {
            Rectangle()
                .frame(width: 50, height: 50)
                .offset(x: offset.width, y: offset.height)
                .gesture(longPress)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
