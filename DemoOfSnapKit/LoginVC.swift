//
//  LoginVC.swift
//  DemoOfSnapKit
//
//  Created by Xzx 's iMac on 15/6/8.
//  Copyright (c) 2015年 touch-spring. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
       super.viewDidLoad()

       let bgImage = UIImageView(image: UIImage(named: "welcome"))
       self.view .addSubview(bgImage)
       bgImage.fillSuperview()
        
        let aboutBtn = UIButton()
        aboutBtn.setBackgroundImage(UIImage(named: "welcome_about"), forState: .Normal)
        let productBtn = UIButton()
        productBtn.setBackgroundImage(UIImage(named: "welcome_product"), forState: .Normal)
        let projectBtn = UIButton()
        projectBtn.setBackgroundImage(UIImage(named: "welcome_project"), forState: .Normal)
        let videoBtn = UIButton()
        videoBtn.setBackgroundImage(UIImage(named: "welcome_video"), forState: .Normal)
        
             self.view.addSubview(aboutBtn)
             self.view.addSubview(projectBtn)
             self.view.addSubview(productBtn)
             self.view.addSubview(videoBtn)
        
        bgImage.groupHorizontally([aboutBtn,productBtn,projectBtn,videoBtn],
                                  centeredUnderView: self.view,
                                         topPadding: -100,
                                            spacing: 35,
                                              width: 60,
                                             height: 60)
    }

}
