//
//  ViewController.swift
//  dz-4.8.3
//
//  Created by user on 20.01.2022.
//

import UIKit
import SnapKit


class Cafe: Codable {
    var cafe: [CafeModel] = []
}

class CafeModel: Codable {
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
    var bord: [BordModel] = []
}

class BordModel: Codable {
    var id: Int? = nil
    var title: String? = nil
}


class ViewController: UIViewController {
    override func viewDidLoad() {
        
        let json = """
{
  "cafe" : [
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
      ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
        ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
      ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
        ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
      ]
    }
  ]
}
"""

        let model = try! JSONDecoder().decode(Cafe.self, from: Data(json.utf8))
        dump(model)
    }
}
