//
//  frameview2.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import Foundation
import SwiftUI

struct FameVIEW2: View {
    var body: some View {
        
        VStack(spacing:2){
            Section {
              
                    ForEach(Sheet.allCases,id:\.self) {item in
                        
                        Symbolview2(imagename:item.imagetitle, textforsymbol:item.Name, color: item.color, textcolor:.black)
                        
                        
                    
                    
                }
            }
            
        }
    }
}

struct FameVIEW2_Previews: PreviewProvider {
    static var previews: some View {
        FameVIEW2()
    }
}
