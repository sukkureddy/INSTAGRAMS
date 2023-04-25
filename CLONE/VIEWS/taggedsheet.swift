//
//  taggedsheet.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct taggedsheet: View {
    let taggerpeople :[User]
   
    var body: some View {
        
        
            
            ForEach(taggerpeople,id:\.self) {item in
                Text(item.username)
               
            
        }
    }
}

//struct taggedsheet_Previews: PreviewProvider {
//    static var previews: some View {
//        taggedsheet()
//    }
//}

struct singletagged: View {
    let post:UploadModel
    var body: some View {
        HStack {
            Image("pooja").resizable().scaledToFit().frame(width: 35,height: 35)
                .clipShape(Circle())
            
            
            Text("name").bold()
            
            Spacer()
            
        }
    }
}
