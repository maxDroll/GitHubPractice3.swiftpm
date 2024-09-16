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
    @State var storedTime = ""
    var body: some View{
        HStack{
            VStack{
                TextField("Enter a Task", text: $storedString)
                    .textFieldStyle(.roundedBorder)
                TextField("Enter a Time", text: $storedTime)
                    .textFieldStyle(.roundedBorder)
            }
            Button("Add Task") {
                tasks.append(Task(nameOfTask: storedString , timeEstimate: storedTime))
            }
            .frame(width: 200, height: 100)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .foregroundStyle(.white)
        }
    }
}
