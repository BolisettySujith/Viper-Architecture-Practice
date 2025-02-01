//
//  UserListInteractor.swift
//  ViperArch
//
//  Created by Havells on 06/02/25.
//

import Foundation
import UIKit

protocol UserListInteractorProtocol {
    func fetchUsers()
}

class UserListInterator : UserListInteractorProtocol {
    var presenter : (any UserListPresenterProtocol)?
    
    func fetchUsers() {
        let users = [User(id: 1, name: "John Doe"),User(id: 2, name: "John2 Doe"),]
        presenter?.usersFetched(users)
    }
    
    
}
