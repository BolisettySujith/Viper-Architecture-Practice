//
//  UserListPresenter.swift
//  ViperArch
//
//  Created by Havells on 06/02/25.
//

import Foundation

protocol UserListPresenterProtocol : ObservableObject {
    var users : [User] {get}
    func loadUser()
    func usersFetched(_ users: [User])
}


class UserListPresenter : UserListPresenterProtocol, ObservableObject {

    @Published var users: [User] = []
    var interactor: UserListInteractorProtocol?
    
    func loadUser() {
        interactor?.fetchUsers()
    }
    
    func usersFetched(_ users: [User]) {
        DispatchQueue.main.async {
            self.users = users
        }
    }
}
