//
//  symbolview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct Symbolview: View {
    var imageName:String
    var textOfSymbol:String
    var body: some View {
       
        VStack {
            Image(systemName:imageName).resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
            
            Text(textOfSymbol)
                
            
            
        }.padding()
            .frame(width:170,height: 70)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
           
        
        
    }
}

struct SYMBOLVIEW_Previews: PreviewProvider {
    static var previews: some View {
       Symbolview(imageName:"bookmark", textOfSymbol:"save")
    }
}
