//
//  ViewController.swift
//  DemoOfSnapKit
//
//  Created by Xzx 's iMac on 15/6/2.
//  Copyright (c) 2015年 touch-spring. All rights reserved.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {
//初始化box
    lazy var blackBox  = UIView()
    lazy var yellowBox = UIView()
    lazy var redBox    = UIView()
    lazy var purpleBox = UIView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.initWithView()
    }
//初始化视图
     func initWithView() {
        
        self.initWithYellowBox()
        self.initWithBlackBox()
        self.initWithRedBox()
        self.initWithPurpleBox()
    }

// MARK: private
    func initWithYellowBox() {
//yellowBox
        self.view.addSubview(yellowBox)
        yellowBox.snp_makeConstraints { (make) -> Void in
        make.edges.equalTo(yellowBox.superview!).insets(UIEdgeInsetsMake(20, 20, 20, 20))
            yellowBox.backgroundColor = UIColor.yellowColor()
        }
    }

    func initWithBlackBox() {
//blackBox
        self.view.addSubview(blackBox)
        blackBox.snp_makeConstraints { (make) -> Void in
            //宽高为100
            make.width.height.equalTo(100)
            //居中
            make.center.equalTo(self.view)
            blackBox.backgroundColor = UIColor.blackColor()
        }
    }
    
    func initWithRedBox() {
        
        self.view.addSubview(redBox)
            redBox.snp_makeConstraints { (make) -> Void in
             //顶部离父视图距离为64
            make.topMargin.equalTo(64)
             //父视图左边距x小于等于10
            make.left.lessThanOrEqualTo(10)
             //比blackbox宽小20 高多200
            make.size.equalTo(blackBox).offset(CGSizeMake(-20, 200))
            redBox.backgroundColor = UIColor.redColor()
            }
    }
    
    func initWithPurpleBox() {
        
        self.view.addSubview(purpleBox)
        purpleBox.snp_makeConstraints { (make) -> Void in
            //blackBox正下方
            make.top.lessThanOrEqualTo(blackBox.snp_bottom)
            make.left.lessThanOrEqualTo(blackBox)
            //比blackbox宽小20 高小20
            make.size.equalTo(blackBox).offset(CGSizeMake(-20, -20))
            purpleBox.backgroundColor = UIColor.purpleColor()
        }
    }
}

