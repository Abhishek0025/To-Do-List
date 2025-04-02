//
//  TodoListApp.swift
//  TodoList
//
//  Created by Abhishek A on 4/2/25.
//

import SwiftUI

@main
struct TodoListApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
