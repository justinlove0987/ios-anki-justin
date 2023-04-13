//
//  Deck.swift
//  AnkiCopy
//
//  Created by justin on 2023/4/13.
//

import UIKit

struct Deck: Codable {
    let title: String
//    var hasChildren: Bool { !children?.isEmpty }
    var isOpened: Bool
    let children: [Deck]?
}
