//
//  ViewController.swift
//  AnkiCopy
//
//  Created by justin on 2023/4/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let swiftObject = [
            Deck(title: "English", isOpened: false, children: [
                Deck(title: "Reading", isOpened: false, children: [
                    Deck(title: "News", isOpened: false, children: nil)]),
                Deck(title: "Speaking", isOpened: false, children: nil),
                Deck(title: "Listening", isOpened: false, children: nil)
            ]),
            Deck(title: "Swift", isOpened: false, children: nil)

        ]

        let encoder = JSONEncoder()

        let data = try! encoder.encode(swiftObject)

        let json = String(data: data, encoding: .utf8)!

        print(json)

        
    }


}

let json = """
{
    "decks": [
        [
            {
                "title": "English",
                "children": [
                    {
                        "title": "Reading",
                        "children": [
                            {
                                "title": "News",
                                "isOpened": false
                            }
                        ],
                        "isOpened": false
                    },
                    {
                        "title": "Speaking",
                        "isOpened": false
                    },
                    {
                        "title": "Listening",
                        "isOpened": false
                    }
                ],
                "isOpened": false
            },
            {
                "title": "Swift",
                "isOpened": false
            }
        ]
    ]
}
"""



