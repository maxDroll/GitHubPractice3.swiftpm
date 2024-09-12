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
            Button("Add Task") {
                tasks.append(Task(nameOfTask: storedString))
            }
        }
    }
}
