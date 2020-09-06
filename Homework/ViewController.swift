//
//  ViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var parentStackView: UIStackView!
    //@IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var subjectsArray: [String] = []
    var saveData: UserDefaults = UserDefaults.standard
    var num: Int = 0
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        //searchBar.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if saveData.object(forKey: "title") != nil {
            subjectsArray = saveData.object(forKey: "title") as! [String]
        }
        layoutButton()
    }
    
//    // 検索バー編集開始時にキャンセルボタン有効化
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
//        searchBar.setShowsCancelButton(true, animated: true)
//    }
//
//    // キャンセルボタンでキャセルボタン非表示
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searchBar.resignFirstResponder()
//        searchBar.setShowsCancelButton(false, animated: true)
//    }
//
//    // エンターキーで検索
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
//        searchBar.resignFirstResponder()
//        searchBar.setShowsCancelButton(false, animated: true)
//    }
//
//    // 入力された文字出力
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print(searchText)
//
//
//    }
    
    func layoutButton() {
        if subjectsArray.count != 0 {
            let subviews = parentStackView.subviews
            for subview in subviews {
                subview.removeFromSuperview()
            }
            let num = subjectsArray.count
            for i in 0...(num - 1) {
                if i % 2 == 0 {
                    let stackView = UIStackView()
                    stackView.axis = .horizontal
                    stackView.spacing = 20
                    stackView.distribution = .fillEqually
                    let button = UIButton()
                    button.setTitle(subjectsArray[i], for: .normal)
                    button.backgroundColor = .black
                    button.addTarget(self, action: #selector(self.toListVC(_:)), for: .touchUpInside)
                    button.tag = i+1
                    stackView.addArrangedSubview(button)
                    if (i + 1) < subjectsArray.count {
                        let button2 = UIButton()
                        button2.setTitle(subjectsArray[i + 1], for: .normal)
                        button2.backgroundColor = .black
                        button2.addTarget(self, action: #selector(self.toListVC), for: .touchUpInside)
                        button2.tag = i+2
                        stackView.addArrangedSubview(button2)
                    } else {
                        let marginView = UIView()
                        stackView.addArrangedSubview(marginView)
                    }
                    parentStackView.addArrangedSubview(stackView)
                } else {
                }
            }
        }
    }
    
    @objc func toListVC(_ sender: UIButton) {
        num = sender.tag
        print(num)
        print(subjectsArray)
        self.performSegue(withIdentifier: "toListVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListVC" {
            let vc = segue.destination as! ListViewController
            vc.subjectString = subjectsArray[num - 1]
        }
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    let vc = segue.destination as! ListViewController
    //    vc.titleText = segue.identifier!
}
