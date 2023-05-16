//
//  FirstViewViewModel.swift
//  VictorTest
//
//  Created by Артем Петрюк on 16.05.2023.
//

import Foundation

class ViewModel: ObservableObject {
    //Суммируемые числа
    @Published var firstNumber = 0
    @Published var secondNumber = 0
    //массив пользователей
    @Published var users: [User] = []
    //State главного view
    @Published var mainViewState = MainViewState.firstScreen
    
    //Сумма двух чисел
    var sum: Int {
        return self.firstNumber + self.secondNumber
    }
    
    
    // фунция загрузки пользователей
    func getUsers() {
        let users: [User] = Bundle.main.decode("test.json")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.users = users
            self.mainViewState = .secondScreen
         }
    }
    
    
    enum MainViewState {
        case firstScreen, loading, secondScreen
    }
}
