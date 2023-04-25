//
//  od.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct od: View {
    let post: UploadModel
            
        var body: some View {
            VStack {
                HStack {
                    ForEach(post.Tag ?? [], id:\.self) { item1 in
                        D1(usernames:[item1])
                    }
                    Spacer()
                }
            }
        }
        
}

//struct od_Previews: PreviewProvider {
//    static var previews: some View {
//        od()
//    }
//}

//struct D1: View {
//    let user:User
//    var body: some View {
//        HStack {
//            Image("sukku").resizable().scaledToFit()
//                .frame(width: 35,height: 35)
//
//            Text(user.username)
//            Spacer()
//
//        }
//    }
//}

struct D1: View {
    let usernames: [String]?
    
    var body: some View {
        HStack {
            Image("sukku")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
            
            ForEach(usernames ?? [], id: \.self) { username in
                Text(username)
            }
            
            Spacer()
        }
    }
}

