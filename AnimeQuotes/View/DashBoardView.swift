//
//  DashBoardView.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import SwiftUI

struct Anime  :Hashable{
   var ImageName : String
    var AnimeName : String
}




struct DashBoardView: View {
    @StateObject var DashBoardVM : DashVm = DashVm()

    
    var body: some View {
        ZStack{
           
            NavigationView{
                VStack{
                    
                    List{
                        
                        ForEach(DashBoardVM.animeGallery.indices, id: \.self) { index in
                            HStack{
                                Image(DashBoardVM.animeGallery[index].ImageName)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                    .frame(width: 100 , height: 200)
                                
                                Text(DashBoardVM.animeGallery[index].AnimeName)
                                    .font(.system(size: 25))
                                    .foregroundColor(.black)
                                
                                    .fontWeight(.bold)
                                    .padding(.horizontal)
                                    .frame(width : 150 , alignment: .leading)
                                
                                if index == 0 {
                                    NavigationLink(destination: NarutoView()) {
                                        Text("")
                                    }
                                }
                                else if index == 1 {
                                    NavigationLink(destination: OnePieceView()) {
                                        Text("")
                                    }
                                }
                                
                                
                            }.frame(height : 150)
                            
                            
                            
                        }
                        
                        
                        
                        
                    }
                }
              
            }
        }
            
       
    }
}

struct DashBoardView_Previews: PreviewProvider {
    static var previews: some View {
        DashBoardView()
    }
}
