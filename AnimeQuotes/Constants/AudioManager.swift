//
//  AudioManager.swift
//  AnimeQuotes
//
//  Created by cyno on 19/07/23.
//

import Foundation
import SwiftUI
import AVFoundation

class AudioManager: ObservableObject {
        func getAudio(text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.pitchMultiplier = 1.0
        utterance.rate = 0.4
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}
