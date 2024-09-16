//
//  HeaderView.swift
//  GitHubPractice3
//
//  Created by Maxwell Droll on 9/12/24.
//

import SwiftUI

struct HeaderView: View{
    @Binding var tasks: [Task]
    @State var storedString = ""
    var body: some View{
        HStack{
            TextField("Enter a Task", text: $storedString)
                .textFieldStyle(.roundedBorder)
            Button("Add Task") {
                tasks.append(Task(nameOfTask: storedString))
            }
            .frame(width: 200, height: 100)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
        }
    }
}
