//
//  NarutoVM.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import Foundation
class NarutoVM : ObservableObject {
    @Published var characterArray = [Anime(ImageName: "Itachi", AnimeName: "Itachi") ,
                                     Anime(ImageName: "Sasuke", AnimeName: "Sasuke"),
                                     Anime(ImageName: "Shikamaru", AnimeName: "Shikamaru"),
                                     Anime(ImageName: "Obito", AnimeName: "Obito"),
                                     Anime(ImageName: "MadaraUchiha", AnimeName: "Madara Uchiha")
    
    
    ]
}
