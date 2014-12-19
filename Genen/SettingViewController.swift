//
//  SettingViewController.swift
//  Genen
//
//  Created by Kenji Suzuki on 2014/12/19.
//  Copyright (c) 2014年 Kenji Suzuki. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    var backButton: UIBarButtonItem!;

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "目標設定";
        
        backButton = UIBarButtonItem(title: "<", style: UIBarButtonItemStyle.Bordered, target: self, action: "backOnClick");
        self.navigationItem.leftBarButtonItem = backButton;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func backOnClick() {
        self.navigationController?.popViewControllerAnimated(true);
    }

}
