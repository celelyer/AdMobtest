//
//  ViewController.swift
//  AdMobtest
//
//  Created by セロラー on 2017/12/23.
//  Copyright © 2017年 mikiya.tadano. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    let AdMobID = "pub-7104461095653608"
    let TEST_ID = "ca-app-pub-7104461095653608/2086990997"
    
    let AdMobTest:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        
        var admobView = GADBannerView()
        
        admobView = GADBannerView(adSize:kGADAdSizeBanner)
        admobView.frame.origin = CGPoint(x:0, y:self.view.frame.size.height - admobView.frame.height)
        admobView.frame.size = CGSize(width:self.view.frame.width, height:admobView.frame.height)
        
        if AdMobTest {
            admobView.adUnitID = "ca-app-pub-7104461095653608/2086990997"
        }
        else{
            admobView.adUnitID = AdMobID
        }
        
        admobView.rootViewController = self
        admobView.load(GADRequest())
        
        self.view.addSubview(admobView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
