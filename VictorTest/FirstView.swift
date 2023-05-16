//
//  ContentView.swift
//  VictorTest
//
//  Created by Артем Петрюк on 16.05.2023.
//

import SwiftUI

struct FirstView: View {
    
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        
        
        
        VStack {
            Group {
                TextField("", text: Binding(
                    get: { String(viewModel.firstNumber) },
                    set: { viewModel.firstNumber = Int($0) ?? 0 }
                ))
                TextField("", text: Binding(
                    get: { String(viewModel.secondNumber) },
                    set: { viewModel.secondNumber = Int($0) ?? 0 }
                ))
            }
            .padding(10)
            .overlay(Rectangle().stroke(Color.blue))
            .padding()
            .keyboardType(.decimalPad)
    
            
            Button {
                viewModel.mainViewState = .loading
                viewModel.getUsers()
                
            } label: {
                Text("Вторая View")
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 60)
                    .background(.blue)
                    
            }
            .padding()
        

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
