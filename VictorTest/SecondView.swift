//
//  SecondView.swift
//  VictorTest
//
//  Created by Артем Петрюк on 16.05.2023.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        
        
        
            VStack {
                HStack {
                    Button {
                        viewModel.mainViewState = .firstScreen
                    } label: {
                        Text("Закрыть")
                    }
                    .padding()
                    Spacer()

                }
                Spacer()
                Text("\(viewModel.sum)")
                Spacer()
                HStack {
                    Text("Имя")
                    Spacer()
                    Text("Возраст")
                }
                .padding(.horizontal, 40)
                .padding(.vertical)
                ForEach(viewModel.users) { user in
                    HStack{
                        Text("\(user.name)")
                        Spacer()
                        Text("\(user.age)")
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 5)
                    
                }
                Spacer()
                
            }
            
        }
            
            
            
        
            
    
    
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
