//
//  UserListView.swift
//  ViperArch
//
//  Created by Havells on 06/02/25.
//

import Foundation
import SwiftUI

struct UserListView : View {
    @ObservedObject var presenter: UserListPresenter
    
    var body: some View {
        List(presenter.users) { user in
            Text(user.name)
        }
        .onAppear{
            presenter.loadUser()
        }
    }
}
