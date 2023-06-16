//
//  ContentView.swift
//  TodoApp
//
//  Created by Sae Sakamoto on 2023/06/12.
//

import SwiftUI



struct ContentView: View{
    @EnvironmentObject var userData: UserData  //インスタンス
    
    var body: some View {
        NavigationView {
           
            List{
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else{
                            return
                        }
                        self.userData.tasks[index].checked.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                
                if self.userData.isEditing{
                    Draft()
                }else{
                    Button(action: {
                        self.userData.isEditing = true
                    })
                    {
                        Text("+")
                            .font(.title)
                    }
                }
            }
                    .navigationBarTitle(Text("Tasks"))
                    .navigationBarItems(trailing: Button(action: {
                        DeleteTask()
                    })
                    {
                        Text("Delete")
                    }
                    )
            }
        }
        
    func DeleteTask() {//削除するときの処理
        let necessaryTask = self.userData.tasks.filter({!$0.checked})
        self.userData.tasks = necessaryTask
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(UserData())
        }
    }
