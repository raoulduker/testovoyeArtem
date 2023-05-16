//
//  MainView.swift
//  VictorTest
//
//  Created by Артем Петрюк on 16.05.2023.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        switch viewModel.mainViewState {
        case .firstScreen:
            FirstView()
        case .loading:
            ProgressView()
        case .secondScreen:
            SecondView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
