//
//  GameSprite.swift
//  Claudio escapa da tourada
//
//  Created by Leonnardo Rabello on 01/01/2019.
//  Copyright © 2019 No Name Org. All rights reserved.
//

import SpriteKit

protocol GameSprite{
    var textureAtlas:SKTextureAtlas { get set }
    var initialSize: CGSize { get set }
    func onTap()
}

