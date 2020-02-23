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
    
    @IBOutlet weak var date: UIDatePicker!
    
    var saveData: UserDefaults = UserDefaults.standard
    var number: Int!
    //データの保存
    
    
    var datePicker: UIDatePicker = UIDatePicker()
    
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
    
    
    
    
    //  class DatePickerKeyboard: UITextField {
    //  private var datePicker: UIDatePicker!
    //
    //  required init?(coder aDecoder: NSCoder) {
    //      super.init(coder: aDecoder)
    //      commoninit()
    //  }
    //  override init(frame: CGRect) {
    //      super.init(frame: frame)
    //      commoninit()
    //  }
    //
    //
    //  private func commoninit() {
    //      // datePickerの設定
    //      datePicker = UIDatePicker()
    //      datePicker.date = Date()
    //      datePicker.datePickerMode = .date
    //      datePicker.locale = Locale(identifier: "ja")
    //      datePicker.addTarget(self, action: #selector(setText), for: .valueChanged)
    //
    //      // textFieldのtextに日付を表示する
    //      setText()
    //
    //      inputView = datePicker
    //      inputAccessoryView = createToolbar()
    //  }
    //  // キーボードのアクセサリービューを作成する
    //     private func createToolbar() -> UIToolbar {
    //         let toolbar = UIToolbar()
    //         toolbar.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 44)
    //
    //         let space = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
    //         space.width = 12
    //         let flexSpaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
    //         let todayButtonItem = UIBarButtonItem(title: "今日", style: .done, target: self, action: #selector(todayPicker))
    //         let doneButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePicker))
    //
    //         let toolbarItems = [flexSpaceItem, todayButtonItem, doneButtonItem, space]
    //
    //         toolbar.setItems(toolbarItems, animated: true)
    //
    //         return toolbar
    //     }
    //
    //     // キーボードの完了ボタンタップ時に呼ばれる
    //     @objc private func donePicker() {
    //         resignFirstResponder()
    //     }
    //     // キーボードの今日ボタンタップ時に呼ばれる
    //     @objc private func todayPicker() {
    //         datePicker.date = Date()
    //         setText()
    //     }
    //  // datePickerの日付けをtextFieldのtextに反映させる
    //  @objc private func setText() {
    //      let f = DateFormatter()
    //      f.dateStyle = .long
    //      f.locale = Locale(identifier: "ja")
    //      text = f.string(from: datePicker.date)
    //  }
    //  // カーソル非表示
    //  override func caretRect(for position: UITextPosition) -> CGRect {
    //      return CGRect(x: 0, y: 0, width: 0, height: 0)
    //      }
    //
    //
    //    /*
    //    // MARK: - Navigation
    //
    //    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        // Get the new view controller using segue.destination.
    //        // Pass the selected object to the new view controller.
    //    }
    //    */
    //
    //}
}
