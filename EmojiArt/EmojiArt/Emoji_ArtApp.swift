//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Aylin Hyusmen on 7.11.23.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
        }
    }
}
