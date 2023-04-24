//
//  CLONEApp.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI
import Firebase

@main
struct CLONEApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
