//
//  GRID.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

//
//  grid.swift
//  instagram_clone
//
//  Created by Sukumar Reddy Pannala on 4/20/23.
//

import SwiftUI

struct grid: View {
    let grid = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @State private var firstImageHeight: CGFloat = 0
    let photos  = ["friend","pooja","sukku","Instagram"]
    
    
    var body: some View {
        let random = photos.randomElement()
       
            GeometryReader { geo in
                
                
                LazyVGrid(columns:grid) {
                    
                    Group {
                        
                        Image(random ?? "").resizable()
                            .scaledToFit()
                            .frame(width:180,height:180)
                            .onAppear{
                                firstImageHeight = geo.size.height * 1.5
                            }.padding()
                        
                        
                        
                        
                        ForEach(photos.filter{$0 != random},id:\.self) {
                            item in
                            
                            
                            Image(item).resizable()
                                .scaledToFit()
                        }
                        
                    }
                }
            }
        
    }
}

struct grid_Previews: PreviewProvider {
    static var previews: some View {
        grid()
    }
}

