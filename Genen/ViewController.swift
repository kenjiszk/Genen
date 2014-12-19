//
//  ViewController.swift
//  Genen
//
//  Created by Kenji Suzuki on 2014/12/19.
//  Copyright (c) 2014年 Kenji Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var settingButton: UIBarButtonItem!;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "減煙のススメ";
        
        settingButton = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: "onClickSetting");
        self.navigationItem.rightBarButtonItem = settingButton;
        self.navigationItem
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func onClickSetting() {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("SettingViewController") as SettingViewController;
        self.navigationController?.pushViewController(vc, animated:true);
    }
}

