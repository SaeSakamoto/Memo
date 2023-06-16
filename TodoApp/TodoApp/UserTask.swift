//
//  UserTask.swift
//  TodoApp
//
//  Created by Sae Sakamoto on 2023/06/16.
//

import SwiftUI

struct Task: Identifiable, Equatable {//idと言うプロパティが必要
    let id = UUID()//自動でIDを作ってくれる
    var title: String//タスクの内容を格納する
    var checked: Bool//チェック入ってる入ってない診断
    
    init(title:String,checked:Bool){//bool型　＝　boolean
        self.title = title
        self.checked = checked
    }
}
