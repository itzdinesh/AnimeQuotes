//
//  OnePiece.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import Foundation
class OnePieceVM : ObservableObject {
    @Published var characterArray = [Anime(ImageName: "Franky", AnimeName: "franky") ,
                                     Anime(ImageName: "Luffy", AnimeName: "Monkey D Luffy"),
                                     Anime(ImageName: "NicoRobin", AnimeName: "Robin"),
                                     Anime(ImageName: "Zoro", AnimeName: "Ronoro Zoro"),
    ]
}
