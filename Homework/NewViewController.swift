//
//  NewViewController.swift
//  Homework
//
//  Created by Yuma on 2020/05/30.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
        @IBOutlet var titleTextField: UITextField!
        @IBOutlet weak var addButton: UIButton!
        
        var saveData: UserDefaults = UserDefaults.standard
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            
            titleTextField.text = saveData.object(forKey: "title") as? String
        }
        
        @IBAction func addSubject() {
        saveData.set(titleTextField.text, forKey: "title")
            
        }
        
        @IBAction func cancel() {
               
                 let alert = UIAlertController(title: "追加が完了していません", message: "このまま戻りますか？", preferredStyle: .alert)
                       let cancelAction = UIAlertAction(title: "キャンセル", style: .default)
                       let okAction = UIAlertAction(title: "OK", style: .destructive) { (action: UIAlertAction) in
                           self.dismiss(animated: true, completion: nil)
                           //OKボタンで前の画面に戻る
                       }
                       alert.addAction(cancelAction)
                       alert.addAction(okAction)
                       present(alert, animated: true, completion: nil)
           }

        /*
        // MARK: - Navigation
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */
    }