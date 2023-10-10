//
//  OnePieceView.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import SwiftUI

struct OnePieceView: View {
    @StateObject var OnePiece : OnePieceVM = OnePieceVM()
    let columns : [GridItem] = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            
            ZStack{
                Image("narutoBG")
                    .resizable()
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        LazyVGrid(columns: columns , spacing: 40){
                            ForEach(OnePiece.characterArray, id: \.self) { Item in
                                
                                Image(Item.ImageName)
                                    .resizable()
                                // .scaledToFit()
                                    .cornerRadius(10)
                                    .frame(width: 170 , height:  150)
                                    .overlay(Text(Item.AnimeName)
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.semibold)
                                    )
                                
                                
                                
                                
                                
                            }
                        }
                    }
                }
            }
            
        }
    }
}

struct OnePieceView_Previews: PreviewProvider {
    static var previews: some View {
        OnePieceView()
    }
}
