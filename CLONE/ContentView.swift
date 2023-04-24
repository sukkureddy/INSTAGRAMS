//
//  ContentView.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewmodel = Authviewmodel()
    var body: some View {
        Group {
            
            if viewmodel.usersession != nil {
               Main()
                
            }
            else {
                
            signup()
               
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
