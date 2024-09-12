import SwiftUI

struct ContentView: View {
    @State var tasks = ["Mow the Lawn","Feed the Dog","Grocery Shop"]
    var body: some View {
        List(tasks, id: \.self){task in
            Text(task)
        }
    }
}
