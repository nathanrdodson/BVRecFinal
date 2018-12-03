//
//  PullUpMenuVC.swift
//  BVRecFinal
//
//  Created by Nathan R. Dodson on 11/16/18.
//  Copyright © 2018 Nathan Dodson. All rights reserved.
//

import UIKit

class PullUpMenuVC: UIViewController {
    
    let defaultTint = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        prepareBackgroundView()
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        UIView.animate(withDuration: 0.35) {
//            let frame = self.view.frame
//            let yComponent = UIScreen.main.bounds.height * 1
//            self.view.frame = CGRect(0, yComponent, frame.width, frame.height)
//        }
//    }
//
//
//    func pullUpToTop() {
//        UIView.animate(withDuration: 0.35) {
//            let frame = self.view.frame
//            let yComponent = UIScreen.main.bounds.height * 0.57
//            self.view.frame = CGRect(0, yComponent, frame.width, frame.height)
//        }
//    }
//
//    func pushToBottom() {
//        UIView.animate(withDuration: 0.35) {
//            let frame = self.view.frame
//            let yComponent = UIScreen.main.bounds.height * 1
//            self.view.frame = CGRect(0, yComponent, frame.width, frame.height)
//        }
//    }
    
    func prepareBackgroundView() {
//        let blurEffect = UIBlurEffect.init(style: .light)
//        let visualEffect = UIVisualEffectView.init(effect: blurEffect)
//        let bluredView = UIVisualEffectView.init(effect: blurEffect)
//        bluredView.contentView.addSubview(visualEffect)
//
//        visualEffect.frame = UIScreen.main.bounds
//        bluredView.frame = UIScreen.main.bounds
//
//        view.insertSubview(bluredView, at: 0)
        
//        view.backgroundColor = .white
//        view.tintColor = defaultTint
        
//        let segItems = ["Fields", "Parking", "Restrooms"]
//        let frame = UIScreen.main.bounds
//        let pullDownSeg = UISegmentedControl(items: segItems)
//        let fieldListButton = UIButton(frame: CGRect(x: 20, y: 100, width: 100, height: frame.height*0.045))
//
//        pullDownSeg.selectedSegmentIndex = 0
//        pullDownSeg.frame = CGRect(frame.minX + 20, frame.minY + 15, frame.width - 40, frame.height*0.045)
//        self.menuView.addSubview(pullDownSeg)
//
//        fieldListButton.backgroundColor = .black
//        fieldListButton.tintColor = defaultTint
//        self.menuView.addSubview(fieldListButton)
    }

    
    @IBAction func byeByeSegue(_ sender: Any) {
        
        performSegue(withIdentifier: "unwinder", sender: self)
        
    }
    @IBAction func goToFieldList(_ sender: Any) {
        
        performSegue(withIdentifier: "goToFields", sender: self)
    }
}
