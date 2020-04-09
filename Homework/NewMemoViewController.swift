//
//  NewMemoViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class NewMemoViewController: UIViewController, UITextFieldDelegate {

     @IBOutlet var titleTextField: UITextField!
     @IBOutlet var datePicker: UIDatePicker!
     @IBOutlet var contentTextView: UITextView! 

     var saveData: UserDefaults = UserDefaults.standard

     override func viewDidLoad() {
         super.viewDidLoad()
         
        titleTextField.delegate = self
        //enterキーで閉じる
     }
     
    @IBAction func saveMemo() {
        saveData.set(titleTextField.text, forKey: "title")
        saveData.set(datePicker, forKey: "date")
        saveData.set(contentTextView.text, forKey: "content")
        
        self.dismiss(animated: true, completion: nil)
        //完了ボタンで前の画面に戻る
     }
     
     @IBAction func cancel() {
        
          let alert = UIAlertController(title: "保存が完了していません", message: "このまま戻りますか？", preferredStyle: .alert)
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
