//
//  ControlCenter.swift
//  BVRecFinal
//
//  Created by Nathan R. Dodson on 11/28/18.
//  Copyright © 2018 Nathan Dodson. All rights reserved.
//

import UIKit

class ControlCenter: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    @IBAction func GoToFieldList(_ sender: Any) {
        performSegue(withIdentifier: "ToFieldList", sender: self)
    }
    
}
