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
    @State var showAlert = false
    var body: some View{
        HStack{
            Button(action: {
                showAlert = true
            }, label: {
                Text("Add Task")
                    .frame(width: 200, height: 100)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .foregroundStyle(.white)
            })
            .alert("Make a Task", isPresented: $showAlert, actions: {
                TextField("Enter a Task", text: $storedString)
                TextField("Enter a Time", text: $storedTime)
                Button("Add it", role: .cancel, action: {
                    tasks.append(Task(nameOfTask: storedString , timeEstimate: storedTime))
                })
            }, message: {
            Text("Please Make a Task")
            })
        }
    }
}
