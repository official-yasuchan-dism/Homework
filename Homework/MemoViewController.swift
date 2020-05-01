//
//  MemoViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var titleData: [String] = []
    var contentData: [String] = []
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var saveData: UserDefaults = UserDefaults.standard
    var number: Int!
    //データ保存
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = titleText
        //これはちょいと違うけど、navigationbarに科目名を入れておきたい。
        
        print(titleData)
        
        if number == nil {
            
        } else {
            titleTextField.text = titleData[number]
            contentTextView.text = contentData[number]
        }
        
        titleTextField.delegate = self
        //完了で自動で戻る
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //returnが押されたら戻る
    
    @IBAction func saveMemo() {
        saveData.set(titleTextField.text, forKey: "title")
        saveData.set(contentTextView.text, forKey: "content")
    }
    func pickerView(_ pickerView: UIPickerView,didSelectRow row: Int,inComponent component: Int) {
        
    }
    
    @IBAction func deleteMemo() {
        
        UserDefaults.standard.removeObject(forKey: "textViewMemo")
        
    }
}
