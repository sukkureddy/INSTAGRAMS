//
//  profilefilter.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import SwiftUI

struct profilefilter: View {
    let user:User
//    let post:UploadModel
    @State var selectedfilter:proilefiltermodel  = .ownphotos
    var body: some View {
//        HStack {
//
//
//            ForEach(proilefiltermodel.allCases,id:\.rawValue) {item in
//
//                VStack {
//                    Text(item.title)
//                        .foregroundColor(selectedfilter == item ? .blue :.black)
//
//                        .fontWeight(selectedfilter == item ? .semibold : .bold)
//
//
//                            if selectedfilter == item {
//                                Capsule().foregroundColor(.black)
//                                    .frame(height: 3)
//                            }
//                         else {
//                             Capsule().foregroundColor(Color.clear)
//                                 .frame(height: 3)
//                         }
//
//
//
//
//
//
//                }.onTapGesture {
//                    withAnimation(.easeOut){
//                        self.selectedfilter = item
//                    }
//                }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//            }
//
//
//
//
//        }
//
//        Group {
//            if selectedfilter == .ownphotos {
//                gridownphotos()
//            } else if selectedfilter == .saved {
//                Text("saved items")
//            }else {
//                Text("tageed")
//            }
//
//        }
//    }
        
        VStack {
                    HStack {
                        ForEach(proilefiltermodel.allCases, id:\.rawValue) { item in
                            VStack {
                                Text(item.title)
                                    .foregroundColor(selectedfilter == item ? .blue :.black)
                                    .fontWeight(selectedfilter == item ? .semibold : .bold)
                                
                                if selectedfilter == item {
                                    Capsule().foregroundColor(.black)
                                        .frame(height: 3)
                                }
                                else {
                                    Capsule().foregroundColor(Color.clear)
                                        .frame(height: 3)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.easeOut) {
                                    self.selectedfilter = item
                                }
                            }
                        }
                    }
                    
                    Group {
                        if selectedfilter == .ownphotos {
                            gridownphotos(user:user)
                        }
                        else if selectedfilter == .saved {
                          Text("saved")
                        }
                        else {
                            Text("Tagged View")
                        }
                    }
                    
                    Spacer()
                }
                .padding(.top, 20)
            }
       }


//struct profilefilter_Previews: PreviewProvider {
//    static var previews: some View {
//        profilefilter()
//    }
//}
