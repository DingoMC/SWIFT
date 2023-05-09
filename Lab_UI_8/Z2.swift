import SwiftUI

struct FirstView: View {
    @State var options : [String] = ["Opcja 1", "Opcja 2", "Opcja 3"]
    @State var suboptions : [[String]] = [[], ["Opcja 2.1", "Opcja 2.2"], ["Opcja 3.1", "Opcja 3.2"]]
    var body: some View {
        VStack {
            Menu() {
                
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
