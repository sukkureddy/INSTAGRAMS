//
//  Home.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI
import Kingfisher

struct Homeview: View {
    @State var instasheet = false
    @State var arrowdown = false
    @ObservedObject var viewmodel = fetchposts()
    

    
    var body: some View {
        NavigationView() {
            ScrollView {
                statusview()
                
                ForEach(viewmodel.posts) {item in
                    POSTVIEW(post:item)
                    
                    
                }
                
                
            }.navigationBarItems(leading:instagram(arrowdown:$arrowdown))
            
                .navigationBarItems(trailing:Notification())
                                    
                            
            
            
            
            
            
            
        }
        
    }
}


struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
