//
//  UserData.swift
//  TodoApp
//
//  Created by Sae Sakamoto on 2023/06/16.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
    Task(title: "呼び込み君", checked: true),
    Task(title: "ハッカソン", checked: false),
    Task(title: "ムービー", checked: true)
    ]
    
    @Published var isEditing: Bool = false 
}
