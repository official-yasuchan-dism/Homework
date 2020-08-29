//
//  NewViewController.swift
//  Homework
//
//  Created by Yuma on 2020/05/30.
//  Copyright © 2020 Yuma. All rights reserved.
//
import UIKit

class NewViewController: UIViewController {
    
    //UITextfieldに紐づいてる
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    //UIDatePickerを定義するための変数
    var datePicker: UIDatePicker = UIDatePicker()
    var saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.text = saveData.object(forKey: "title") as? String
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set("", forKey: "")
        
        userDefaults.synchronize()
        
        // ピッカー設定
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        dateField.inputView = datePicker
        
        // 決定バーの生成
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        toolbar.setItems([spacelItem, doneItem], animated: true)
        
        // インプットビュー設定(紐づいているUITextfieldへ代入)
        dateField.inputView = datePicker
        dateField.inputAccessoryView = toolbar
    }
    
    // UIDatePickerのDoneを押したら発火
    @objc func done() {
        dateField.endEditing(true)
        
        // 日付のフォーマット
        let formatter = DateFormatter()
        
        //"yyyy年MM月dd日"を"yyyy/MM/dd"したりして出力の仕方を好きに変更できるよ
        formatter.dateFormat = "yyyy年MM月dd日"
        
        //(from: datePicker.date))を指定してあげることで
        //datePickerで指定した日付が表示される
        dateField.text = "\(formatter.string(from: datePicker.date))"
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    @IBAction func addSubject() {
    saveData.set(titleTextField.text, forKey: "title")
        
    }
}
