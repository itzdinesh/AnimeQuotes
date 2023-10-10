//
//  SasukeQView.swift
//  AnimeQuotes
//
//  Created by cyno on 19/07/23.
//

import SwiftUI

struct SasukeQView: View {
    @StateObject var itachiQuotesVm : ItachiQuotesVM = ItachiQuotesVM()
    @StateObject var audioManager : AudioManager = AudioManager()
    private let pastboard = UIPasteboard.general
    var body: some View {
        NavigationView{
        ZStack{
            VStack{
            List{
                    Section(header: Image("SasukeUchiha")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding(.leading)
                        .frame(width: UIScreen.main.bounds.width - 40)){
                    ForEach(itachiQuotesVm.sasukeQuotesArr, id: \.self) { item in
                       
                        Text("\(item)")
                            
                            
                            .padding()
                        HStack{
                            Button {
                                    pastboard.string = item
                                } label: {
                                    Image("CopyIcon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30 , height: 30)
                                }
                                .padding(.leading)
                                Spacer()
                                Button {
                                    audioManager.getAudio(text: item)
                                } label: {
                                    Image("Speaker")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30 , height: 30)
                                }.padding(.trailing)
                        }
                        
                    }
                }

            }.shadow(radius: 20)
                }
            }

        }
    }
}

struct SasukeQView_Previews: PreviewProvider {
    static var previews: some View {
        SasukeQView()
    }
}
