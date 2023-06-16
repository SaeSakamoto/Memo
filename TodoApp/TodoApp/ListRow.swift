//
//  ListRow.swift
//  TodoApp
//
//  Created by Sae Sakamoto on 2023/06/12.
//

import SwiftUI

struct ListRow: View {
    let task : String
    var isCheck: Bool

    var body: some View {
        HStack{
            if isCheck{
                Text("☑️")//チェックされた車線が引かれて文字が薄くなる
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            }else{
                Text("⬜︎")//そうでなければtaskをそのまま表示する
                Text(task)
            }

        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task:"料理", isCheck: true)
    }
}
