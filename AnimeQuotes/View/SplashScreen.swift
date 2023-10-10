//
//  SplashScreen.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import SwiftUI
import AVFoundation
struct SplashScreen: View {
    @State private var isRotating = 0.0
    @State private var isActive : Bool = false
    var body: some View {
        ZStack{
         
            if self.isActive{
            DashBoardView()
            }
            else{
                VStack{
                    Image("desktop-wallpaper-luffy-manga-badasse-thumbnail")
                        .resizable()
                        .frame(width: 300 , height: 300)
                        .cornerRadius(150)
                        .shadow(radius: 20)
                        
                        .padding(.all)
                        .transition(.asymmetric(insertion: .scale, removal: .scale))
                        .rotationEffect(.degrees(isRotating))
                        .onAppear {
                            withAnimation(.linear(duration: 1)
                                .speed(0.1).repeatForever(autoreverses: false)) {
                                    isRotating = 90
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                                        withAnimation {
                                            withAnimation(.linear(duration: 1)
                                                .speed(0.1).repeatForever(autoreverses: false)) {
                                                    isRotating = -180.0
                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                                                        withAnimation {
                                                            withAnimation(.linear(duration: 1)
                                                                .speed(0.1).repeatForever(autoreverses: false)) {
                                                                    isRotating = 180.0
                                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                                                                        withAnimation {
                                                                            withAnimation(.linear(duration: 1)
                                                                                .speed(0.1).repeatForever(autoreverses: false)) {
                                                                                    isRotating = -180.0
                                                                                }
                                                                        }
                                                                    }
                                                                }
                                                        }
                                                    }
                                                }
                                        }
                                    }
                                }
                        }
                    
                    
                    
                    
                    Text("Quotes which will change your life")
                        .foregroundColor(.red)
                        .font(.system(size: 20))
                        
                        .fontWeight(.bold)
                }
            }
        
        }
        .background( Image("wp5295076")
            .opacity(0.5))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
