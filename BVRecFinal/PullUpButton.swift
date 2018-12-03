//
//  PullUpButton.swift
//  BVRecFinal
//
//  Created by Nathan R. Dodson on 11/20/18.
//  Copyright © 2018 Nathan Dodson. All rights reserved.
//

import UIKit

class PullUpButton: UIButton {

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.4
    }
}
