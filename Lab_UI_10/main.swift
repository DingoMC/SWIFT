import SwiftUI
import CoreData


struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
     @FetchRequest(
     sortDescriptors: [NSSortDescriptor(keyPath: \Dog.name,
     ascending: true)],
     animation: .default)
     private var dogs: FetchedResults<Dog>

     @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Breed.name, ascending: true)],
     animation: .default)
     private var breeds: FetchedResults<Breed>
    @State var dogName : String = ""
    @State var dogYear : Int64 = 0
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Nazwa piesa", text: Binding(get: {String(dogName)}, set: {dogName = $0}))
                TextField("Rok urodzenia", text: Binding(get: {String(dogYear)}, set: {dogYear = Int64($0) ?? 0}))
                Button(action: { addDog(dogName: dogName, dogYear: dogYear)}){Text("Dodaj")}
            }
            List {
                ForEach(breeds) {
                    breed in Section(header: Text("\(breed.name!)")){
                        ForEach(breed.dogArray) { dog in
                            Text("\(dog.name!) - urodzony w \(dog.yearBirth)" )
                            EditDogView(dog: dog)
                        }
                    }
                }
            }
        }
    }
    
    private func addBreed(){
         var newBreed = Breed(context: viewContext)
         newBreed.name = "owczarek niemiecki"
         do {
             try viewContext.save()
         } catch {
             let nsError = error as NSError
             fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
         }
         newBreed = Breed(context: viewContext)
         newBreed.name = "husky"
         do {
             try viewContext.save()
         } catch {
             let nsError = error as NSError
             fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
         }
    }
    
    private func addDog (dogName: String, dogYear : Int64) {
        if (breeds.count == 0) {
            addBreed()
        }
        var newDog = Dog(context: viewContext)
        newDog.name = dogName
        newDog.yearBirth = dogYear
        newDog.dog_breed = breeds[0]
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
    private func deleteDog(offsets: IndexSet) {
         withAnimation {
             offsets.map { dogs[$0] }.forEach(viewContext.delete)
             do {
                 try viewContext.save()
             } catch {
                 let nsError = error as NSError
                 fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
             }
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        ContentView()
    }
}

struct EditDogView: View {
    @Environment(\.managedObjectContext) private var viewContext
         @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Dog.name, ascending: true)], animation: .default)
    
         private var dogs: FetchedResults<Dog>
         var dog: Dog

         @State var editName: String = ""
         @State var editYear: String = ""

    var body: some View {
         VStack{
             TextField("Podaj nowe imie", text: $editName)
             TextField("Podaj nowy rok urodzenia", text: $editYear)
             Button(action: ({
                 dog.name = self.editName
                 dog.yearBirth = Int64(self.editYear) ?? 0
                 //dog.toBreed = self.dog.toBreed
                 do {
                     try self.viewContext.save()
                 } catch {
                     let nsError = error as NSError
                     fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                 }
                 //self.presentationMode.wrappedValue.dismiss()
             })) {
                 Text("Edytuj")
             }
         }
     }
}

struct EditDogView_Previews: PreviewProvider {
    static var previews: some View {
        EditDogView(dog: Dog())
    }
}
