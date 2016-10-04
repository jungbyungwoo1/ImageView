//
//  ViewController.swift
//  ImageView
//
//  Created by jungbyungwoo1 on 2016. 9. 27..
//  Copyright © 2016년 jungbyungwoo1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TODO something
        imgOn = UIImage(named: "on.png")
        imgOff = UIImage(named: "off.jpg")
        
        imgView.image = imgOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResizeImage(sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("Zoom In", forState: .Normal)
        } else {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("Zoom Out", forState: .Normal)
        }
        isZoom = !isZoom
    }

    @IBAction func switchImageOnOff(sender: UISwitch) {
        if sender.on {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
}

