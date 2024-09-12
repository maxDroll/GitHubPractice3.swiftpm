import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = [Task(nameOfTask: "Mow the Lawn"),Task(nameOfTask:"Feed the Dog") , Task(nameOfTask: "Grocery Shop")]
    var body: some View {
        List(tasks, id: \.self){task in
            Text(task.nameOfTask)
        }
    }
}
