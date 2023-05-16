//
//  VictorTestApp.swift
//  VictorTest
//
//  Created by Артем Петрюк on 16.05.2023.
//

import SwiftUI

@main
struct VictorTestApp: App {
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
