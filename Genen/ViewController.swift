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
    var settingData = [];

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("viewDidLoad");
        
        self.title = "減煙のススメ";
        
        settingButton = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: "onClickSetting");
        self.navigationItem.rightBarButtonItem = settingButton;
        self.navigationItem
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false);

        println("viewDidAppear");
        
        settingData = SettingEntity.MR_findAll();
        //println(settingData);
        
//        let newSettingData: SettingEntity = SettingEntity.MR_createEntity() as SettingEntity;
//        newSettingData.key = "aaaa";
//        newSettingData.value = 12345;
//        newSettingData.managedObjectContext?.MR_saveToPersistentStoreAndWait();

        println("got settingData %d", settingData.count);

        for (var i = 0; i < settingData.count; i++) {
            println(settingData[i].value as Int);
            println(settingData[i].key);
        }
        
        println("aaaa");
        
        let findSetting: SettingEntity? = SettingEntity.MR_findFirstByAttribute("key", withValue: "aaaa") as? SettingEntity;
        
        println("bbbbb");
        
        if(findSetting != nil) {
        
            println("cccc");
            println(findSetting?.value as Int?, findSetting?.key as String?);
        }
        
        println("dddd");
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func onClickSetting() {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("SettingViewController") as SettingViewController;
        self.navigationController?.pushViewController(vc, animated:true);
    }
}

