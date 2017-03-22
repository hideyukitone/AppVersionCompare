//
//  ViewController.swift
//  AppVersionCompare
//
//  Created by 大國嗣元 on 2017/03/22.
//  Copyright © 2017年 hideyuki okuni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appId = "1214851797" //AdBuster2のApple ID https://itunes.apple.com/us/app/adbuster2-ad-blocker/id1214851797?l=ja&ls=1&mt=8
        
        AppVersionCompare.toAppStoreVersion(appId: appId) { (type) in
            switch type {
            case .latest:
                print("最新バージョンです")
            case .old:
                print("旧バージョンです")
            case .error:
                print("エラー")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

