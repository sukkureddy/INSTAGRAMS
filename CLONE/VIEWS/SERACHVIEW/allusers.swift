//
//  allusers.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct allusers: View {
    @ObservedObject var viewmodel = searchviewmodel()
    var body: some View {
        NavigationView {
        ScrollView {
           
                
            
                VStack {
                    
                    ForEach(viewmodel.user) {item in
                        
                        
                        NavigationLink {
                            Profileview(user:item)
                        } label: {
                            usersearchview(user:item)
                        }
                        
                        
                        
                        
                        
                        
                        
                    }
                }
                
            }
        }
    }
}

struct allusers_Previews: PreviewProvider {
    static var previews: some View {
        allusers()
    }
}
