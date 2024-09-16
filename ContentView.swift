import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = []
    var body: some View {
        HeaderView(tasks: $tasks)
        List(tasks, id: \.self){task in
            HStack(spacing: 100){
                Text(task.nameOfTask)
                Text(task.timeEstimate)
            }
        }
    }
}
