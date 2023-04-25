//
//  Reels.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//
import SwiftUI

struct Reels: View {
    @ObservedObject var viewmodel = Authviewmodel()
    var body: some View {
        VStack {
            Button {
                viewmodel.signout()
                print("logout")
            } label: {
                Text("signout")
            }

            
            
        }
    }
}

struct Reels_Previews: PreviewProvider {
    static var previews: some View {
        Reels()
    }
}
