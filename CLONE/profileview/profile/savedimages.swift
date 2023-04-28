////
////  fetchsavedphotosgrid.swift
////  CLONE
////
////  Created by Sukumar Reddy Pannala on 4/27/23.
////
//
import SwiftUI
import Kingfisher

//struct gridsavedphotos: View {
//    @ObservedObject var viewmodel : fetchsavedimages
//
//    init(user:User) {
//        self.viewmodel = fetchsavedimages(user:user)
//    }
//
//    var body: some View {
//
//        ScrollView {
//            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
//                ForEach(viewmodel.saved,id:\.self) { item in
//                    KFImage(URL(string:item.photo ?? ""))
//
//                                        .resizable()
//                                        .scaledToFit()
//                                }
//                            }
//
//            }
//        }
//    }


struct gridsavedphotos: View {
    @ObservedObject var viewModel: fetchsavedimages
    
    init(user: User) {
        self.viewModel = fetchsavedimages(user: user)
    }
  
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                ForEach(viewModel.saved) { item in
                    KFImage(URL(string:item.photo ?? ""))
                        .resizable()
                        .scaledToFit()
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 20)
        }
      
    }
}

