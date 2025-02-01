//
//  ViperArchApp.swift
//  ViperArch
//
//  Created by Havells on 06/02/25.
//

import SwiftUI

@main
struct ViperArchApp: App {
    var body: some Scene {
        WindowGroup {
            UserListRouter.createModule()
        }
    }
}
