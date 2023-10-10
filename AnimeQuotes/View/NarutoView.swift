//
//  NarutoView.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import SwiftUI

struct NarutoView: View {
    @StateObject var NarutoVm : NarutoVM = NarutoVM()
    @State var navigationLink  : Bool = false
    let columns : [GridItem] = [
        GridItem(.adaptive(minimum:(170)))
    

    ]
    
    var body: some View {
        NavigationView{
            
            
            ZStack{
                
                Image("narutoBG")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.7)
                
                
                ScrollView{
                    LazyVGrid(columns: columns , spacing: 40){
                        ForEach(NarutoVm.characterArray.indices, id: \.self) { Index in
                            ZStack(alignment : .bottom){
                                Image(NarutoVm.characterArray[Index].ImageName)
                                    .resizable()
                                    .cornerRadius(15)
                                
                                    .shadow(radius: 10)
                                    .frame(width: 170 , height:  150)
                                if Index == 0 {
                                    NavigationLink {
                                        ItachiQuotesView()
                                    } label: {
                                        Text(NarutoVm.characterArray[Index].AnimeName)
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .frame(width: 150 , height: 20)
                                            .background(Color.white
                                                .opacity(0.8))
                                            .cornerRadius(10)
                                        
                                    }
                                    
                                }
                                if Index == 1 {
                                    NavigationLink {
                                        SasukeQView()
                                    } label: {
                                        Text(NarutoVm.characterArray[Index].AnimeName)
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .frame(width: 150 , height: 20)
                                            .background(Color.white
                                                .opacity(0.8))
                                            .cornerRadius(10)
                                    }
                                    
                                }
                                if Index == 2 {
                                    NavigationLink {
                                        ShikamaruQView()
                                    } label: {
                                        Text(NarutoVm.characterArray[Index].AnimeName)
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .frame(width: 150 , height: 20)
                                            .background(Color.white
                                                .opacity(0.8))
                                            .cornerRadius(10)
                                    }
                                    
                                }
                                
                                if Index == 3 {
                                    NavigationLink {
                                        ObitoUchihaView()
                                    } label: {
                                        Text(NarutoVm.characterArray[Index].AnimeName)
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .frame(width: 150 , height: 20)
                                            .background(Color.white
                                                .opacity(0.8))
                                            .cornerRadius(10)
                                    }
                                    
                                }
                                
                                
                            }
                            
                            
                            
                        }
                    }
                }
                
            }
           
        }.navigationBarBackButtonHidden(true)
     
    }
}

struct NarutoView_Previews: PreviewProvider {
    static var previews: some View {
        NarutoView()
    }
}

