//
//  gridownphotos.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import SwiftUI
import Kingfisher

struct gridownphotos: View {
    @ObservedObject var viewmodel:FetchPostsss
    
    init( user:User ) {
        self.viewmodel = FetchPostsss(user:user)
    }
    var body: some View {
        //        ScrollView {
        //
        //                ForEach(viewmodel.posts) {item in
        //
        //                    HStack {
        //                        ForEach(0..<2) {item2 in
        //                            KFImage(URL(string:item.photo ?? ""))   .resizable()
        //                                .scaledToFit()
        //
        //                        }
        //                    }
        //
        //
        //
        //
        //                }
        //
        //            }
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                ForEach(viewmodel.posts) { item in
                    KFImage(URL(string:item.photo ?? ""))
                        .resizable()
                        .scaledToFit()
                }
            }
            
        }
    }
}


//struct gridownphotos_Previews: PreviewProvider {
//    static var previews: some View {
//        gridownphotos()
//    }
//}
