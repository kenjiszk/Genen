//
//  SettingViewController.swift
//  Genen
//
//  Created by Kenji Suzuki on 2014/12/19.
//  Copyright (c) 2014年 Kenji Suzuki. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var dailyAverageTextField: UITextField!
    @IBOutlet var startTimeHourTextField: UITextField!
    @IBOutlet var startTimeMinTextField: UITextField!
    @IBOutlet var endTimeHourTextField: UITextField!
    @IBOutlet var endTimeMinTextField: UITextField!
    
    var backButton: UIBarButtonItem!;

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "目標設定";
        
        backButton = UIBarButtonItem(title: "戻る", style: UIBarButtonItemStyle.Bordered, target: self, action: "backOnClick");
        self.navigationItem.leftBarButtonItem = backButton;
        
        let singleTap = UITapGestureRecognizer(target: self, action: "onTap:");
        singleTap.numberOfTapsRequired = 1;
        view.addGestureRecognizer(singleTap);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func backOnClick() {
        self.navigationController?.popViewControllerAnimated(true);
    }
    
    func onTap (recognizer:UIPanGestureRecognizer){
        println("onTap");
        dailyAverageTextField.resignFirstResponder();
        startTimeHourTextField.resignFirstResponder();
        startTimeMinTextField.resignFirstResponder();
        endTimeHourTextField.resignFirstResponder();
        endTimeMinTextField.resignFirstResponder();
        
        checkNumber();
    }
    
    @IBAction func endSetting(sender: AnyObject) {
//        println(dailyAverageTextField.text);
//        println(startTimeHourTextField.text);
//        println(startTimeMinTextField.text);
//        println(endTimeHourTextField.text);
//        println(endTimeMinTextField.text);

        var checkBlankResult = checkBlank();
        if (!checkBlankResult.0) {
            return;
        }
        
        var checkNumberResult = checkNumber();
        if (!checkNumberResult.0) {
            return;
        }
        
        registerToCoreData();
    }
    
    func checkNumber() -> (Bool) {
        var alert = UIAlertView();
        alert.title = "";
        if (dailyAverageTextField.text != "" && dailyAverageTextField.text.toInt() < 1) {
            alert.title = "目標は1本以上で設定してください";
            dailyAverageTextField.text = "";
        } else if (startTimeHourTextField.text != ""
            && (startTimeHourTextField.text.toInt() < 0 || startTimeHourTextField.text.toInt() > 23)) {
            alert.title = "起床時間(時)は0時~23時で設定してください";
            startTimeHourTextField.text = "";
        } else if (startTimeMinTextField.text != ""
            && (startTimeMinTextField.text.toInt() < 0 || startTimeMinTextField.text.toInt() > 59)) {
            alert.title = "起床時間(分)は0分~59分で設定してください";
            startTimeMinTextField.text = "";
        } else if (endTimeHourTextField.text != ""
            && (endTimeHourTextField.text.toInt() < 0 || endTimeHourTextField.text.toInt() > 23)) {
            alert.title = "就寝時間(時)は0時~23時で設定してください";
            endTimeHourTextField.text = "";
        } else if (endTimeMinTextField.text != ""
            && (endTimeMinTextField.text.toInt() < 0 || endTimeMinTextField.text.toInt() > 59)) {
            alert.title = "就寝時間(分)は0分~59分で設定してください";
            endTimeMinTextField.text = "";
        }
        if (alert.title != "") {
            alert.addButtonWithTitle("OK");
            alert.show();
            return (false);
        } else {
            return (true);
        }
    }
    
    func checkBlank() -> (Bool) {
        var alert = UIAlertView();
        alert.title = "";
        if (dailyAverageTextField.text == "") {
            alert.title = "目標本数が未設定です";
        } else if (startTimeHourTextField.text == "") {
            alert.title = "起床時間(時)が未設定です";
        } else if (startTimeMinTextField.text == "") {
            alert.title = "起床時間(分)が未設定です";
        } else if (endTimeHourTextField.text == "") {
            alert.title = "就寝時間(時)が未設定です";
        } else if (endTimeMinTextField.text == "") {
            alert.title = "就寝時間(分)が未設定です";
        }
        if (alert.title != "") {
            alert.addButtonWithTitle("OK");
            alert.show();
            return (false);
        } else {
            return (true);
        }
    }
    
    func registerToCoreData() {
        println("registerToCoreData");
    }
}
