//
//  uploadview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct uploadview: View {
    
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

struct uploadview_Previews: PreviewProvider {
    static var previews: some View {
        uploadview()
    }
}
