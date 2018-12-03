//
//  MapScreenVC.swift
//  BVRecFinal
//
//  Created by Nathan R. Dodson on 11/16/18.
//  Copyright © 2018 Nathan Dodson. All rights reserved.
//

import UIKit

class MapScreenVC: UIViewController, UIScrollViewDelegate {
    
    let imageView:UIImageView = UIImageView() //Initialize the new image view object
    @IBOutlet weak var viewMainMap: UIScrollView! //Initialize the scrollview/connect with sotryboard through IB
    var map:UIImage = UIImage(named: "mapImage")! //Set the image for the "map" variable (main fields)
    var bathroomMap:UIImage = UIImage(named: "restroomImage")!
    var parkingMap:UIImage = UIImage(named: "parkingImage")!
    let navStatusBarColor = UIColor(red: 31/255, green: 95/255, blue: 198/255, alpha: 0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createMainMapArea()
        viewMainMap.contentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior.never //prevents background from maintaining bounce under statusbar
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func createMainMapArea() {
        let imageWidth:CGFloat = 2000 //Image width variable
        let imageHeight:CGFloat = 1000 //Image height variable
        let yPosition:CGFloat = 0 //Initial x pos
        let xPosition:CGFloat = 0 //Initial y pos
        
        imageView.image = map //Set the image "map" to the image view
        imageView.contentMode = UIView.ContentMode.scaleAspectFill //Assign the content mode of the image view
        imageView.frame.size.width = imageWidth //Set the image view width
        imageView.frame.size.height = imageHeight //Set the image view height
        imageView.center = self.view.center
        imageView.frame.origin.y = yPosition
        imageView.frame.origin.x = xPosition
        
        viewMainMap.delegate = self
        viewMainMap.addSubview(imageView) //Sets the image view as a subview
        viewMainMap.contentSize = CGSize(width: imageWidth, height: imageHeight)
    }
    
    @IBAction func pullMenuUp(_ sender: Any) {
        performSegue(withIdentifier: "ToControlCenter", sender: self)
    }
    
    @IBAction func FieldChange(_ sender: Any) {
        imageView.image = map
    }
    
    @IBAction func BathroomChange(_ sender: Any) {
        imageView.image = bathroomMap
    }
    
    @IBAction func ParkingChange(_ sender: Any) {
        imageView.image = parkingMap
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame) //Status bar color change
        statusBarView.backgroundColor = navStatusBarColor
        
        return UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
    }
}
