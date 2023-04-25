//
//  ContentView.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewmodel = Authviewmodel()
    @ObservedObject var viewmodel1 = searchviewmodel()
    var body: some View {
        Group {
            
            if viewmodel.usersession == nil {
                
              LOGINVIEW()
                
            }
            else {
                if let user = viewmodel.currentUser {
                    Main(user:user)
                }
        
               
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
