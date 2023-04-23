//
//  postinfo.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI
import SwiftUI

struct PostInfo: View {
    @State var showalters = false
    @State var textfiled = ""
    var body: some View {
        VStack {
            HStack {
           Symbolview(imageName:"bookmark", textOfSymbol: "save")
                
                Button {
                    showalters.toggle()
                } label: {
                    Symbolview(imageName:"repeat.1.circle", textOfSymbol: "Remix").foregroundColor(.black)
                } .alert("Remix",isPresented: $showalters) {
                    TextField("Textfiled",text: $textfiled)
                    Button("save",action:{
                        
                    })
                    Button("cancel",action:{
                        
                    })
//                    Alert(
//                        title: Text("Delete"),
//                        message: Text("Do you want to delete"),
//                        primaryButton: Alert.Button.destructive(Text("Delete")),
//                        secondaryButton: Alert.Button.cancel()
//                    )
                }

           
                
                
                
            }
            Symbolview2(imagename:"paperplane", textforsymbol:"we've moved things around", color:.gray, textcolor:.blue)
                
            
           
            FameVIEW2()
            
           
            
            Symbolview2(imagename:"gearshape", textforsymbol:"manage content", color:.gray, textcolor:.black)
            
            
        }
    }
}

struct PostInfo_Previews: PreviewProvider {
    static var previews: some View {
        PostInfo()
    }
}
