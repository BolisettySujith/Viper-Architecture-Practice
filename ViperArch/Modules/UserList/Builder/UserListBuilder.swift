//
//  UserListBuilder.swift
//  ViperArch
//
//  Created by Havells on 06/02/25.
//

import Foundation
import SwiftUI

class UserListBuilder {
    static func build() -> some View {
        let presenter = UserListPresenter()
        let interactor = UserListInterator()
        let router = UserListRouter()
        
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return UserListView(presenter: presenter)
    }
}
