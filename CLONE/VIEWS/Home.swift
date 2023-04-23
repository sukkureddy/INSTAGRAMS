//
//  Home.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct Homeview: View {
    @State var instasheet = false
    @State var arrowdown = false
    var body: some View {
        NavigationView() {
            ScrollView {
                statusview()
                
                ForEach(0...10,id:\.self) {item in
                    POSTVIEW()
                    
                    
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
