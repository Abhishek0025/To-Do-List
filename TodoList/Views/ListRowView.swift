//
//  ListRowView.swift
//  TodoList
//
//  Created by Abhishek A on 4/2/25.
//

import SwiftUI

struct ListRowView: View{
    let item: ItemModel
    
    var body: some View{
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    var item1 = ItemModel(title: "First item!", isCompleted: false)
    var item2 = ItemModel(title: "Second item!", isCompleted: true)
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
