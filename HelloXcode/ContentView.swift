//
//  ContentView.swift
//  HelloXcode
//
//  Created by Rafa Navarro Ortega on 13/3/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var gestor = GestorDeTareas()
    
    var body: some View {
        TabView {
            Tab(Constants.homeTasks, systemImage: Constants.tasksIcon) {
                TasksView(gestor: gestor)
            }
            Tab(Constants.homeClock, systemImage: Constants.clockIcon) {
                ClockView()
            }
        }
    }
}

#Preview {
    ContentView()
}
