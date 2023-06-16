//
//  Draft.swift
//  TodoApp
//
//  Created by Sae Sakamoto on 2023/06/16.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    //Textフィールドで扱う変数は、先頭にStateをつける必要がある
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle, onCommit: { self.createTask()
            self.userData.isEditing = false
        })
    }
        func createTask(){
            let newTask = Task(title: self.taskTitle, checked:false)
            self.userData.tasks.insert(newTask, at: 0)
            self.taskTitle = ""
        }
    }

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
