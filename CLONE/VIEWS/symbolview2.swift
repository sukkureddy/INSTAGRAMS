//
//  symbolview2.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct Symbolview2: View {
    var imagename:String
    var textforsymbol:String
    var color:Color
    var textcolor:Color
    var body: some View {
        VStack(alignment:.leading){
            HStack(){
                Image(systemName:imagename).resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30)
                    .foregroundColor(color)
                
                Text(textforsymbol).padding(.horizontal,10)
                    .foregroundColor(textcolor)
                Spacer()
            }.padding()
                
            
            
        }
            .frame(width:360,height: 50)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
    }
}

struct Symbolview2_Previews: PreviewProvider {
    static var previews: some View {
        Symbolview2(imagename:"qrcode.viewfinder", textforsymbol:"QR", color: .gray, textcolor: .blue)
    }
}
