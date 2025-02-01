//
//  UserListRouter.swift
//  ViperArch
//
//  Created by Havells on 06/02/25.
//

import Foundation

protocol UserListRouterProtocol {
    static func createModule() -> UserListView
}

class UserListRouter : UserListRouterProtocol {
    static func createModule() -> UserListView {
        let view = UserListView(presenter: UserListPresenter())
        let presenter = view.presenter
        let interactor = UserListInterator()
        let router = UserListRouter()
        
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
}
