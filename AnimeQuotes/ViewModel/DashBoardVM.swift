//
//  DashBoardVM.swift
//  AnimeQuotes
//
//  Created by cyno on 18/07/23.
//

import Foundation
class DashVm : ObservableObject {
  @Published  var animeGallery = [Anime(ImageName: "Naruto", AnimeName: "Naruto") , Anime(ImageName: "Luffy", AnimeName: "OnePiece") , Anime(ImageName: "Eren", AnimeName: "Attack On Titan") , Anime(ImageName: "YourName", AnimeName: "Your Name")]

}
