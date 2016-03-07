//
//  TaskRegistrationViewController.swift
//  HouseWorkAlarm
//
//  Created by MikiyaFukuda on 2015/12/28.
//  Copyright © 2015年 MikiyaFukuda. All rights reserved.
//

import UIKit
import RealmSwift

class TaskRegistrationViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var interval: UITextField!
    @IBOutlet weak var startDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 登録処理
    @IBAction func register(sender: AnyObject) {
        let taskName = name.text! as NSString
        let intervalString = interval.text! as NSString
        let date = startDate.date
        
        // 入力チェック
        if (taskName.length == 0 || intervalString.length == 0) {
            let alert = UIAlertController(title: "エラー",
            message: "入力されていない項目があります。",
            preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            
            presentViewController(alert, animated: true, completion: nil)
        
            return;
        }
        
        print(taskName)
        
        // realmに保存処理
//        var realm = Realm.init()
        
    }
}