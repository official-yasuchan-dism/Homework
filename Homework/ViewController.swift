//
//  ViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UISearchBarDelegate {
    
    @IBOutlet weak var mathematicsButton: UIButton!
    @IBOutlet weak var japaneseButton: UIButton!
    @IBOutlet weak var englishButton: UIButton!
    @IBOutlet weak var scienceButton: UIButton!
    @IBOutlet weak var socialstudiesButton: UIButton!
    @IBOutlet weak var parentStackView: UIStackView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var subjectsArray: [String] = []
    var saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        searchBar.delegate = self
                              
        //mathematicsButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        //japaneseButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        //englishButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        //scienceButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        //socialstudiesButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        //plusButton.imageView?.contentMode = .scaleAspectFit
        //plusButton.contentHorizontalAlignment = .fill
        //plusButton.contentVerticalAlignment = .fill
        //plusボタンのimageをボタンの大きさに合わせて表示
        
        //navigationController?.setNavigationBarHidden(true, animated: false)
        //Navigation barの非表示
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if saveData.object(forKey: "title") != nil {
            subjectsArray = saveData.object(forKey: "title") as! [String]
        }
        
        layoutButton()
    }
    
    // 検索バー編集開始時にキャンセルボタン有効化
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    // キャンセルボタンでキャセルボタン非表示
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
    }

    // エンターキーで検索
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
    }
    
    // 入力された文字出力
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)

        
    }
    
    func layoutButton() {
        if subjectsArray.count != 0 {
            var subviews = parentStackView.subviews
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
                    stackView.addArrangedSubview(button)
                    if (i + 1) < subjectsArray.count {
                        let button2 = UIButton()
                        button2.setTitle(subjectsArray[i + 1], for: .normal)
                        button2.backgroundColor = .black
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
    
    @IBAction func mathematics() {

    }

    @IBAction func japanese() {
        
    }
    
    @IBAction func english() {
     
    }
 
    @IBAction func science() {
        
    }
    
    @IBAction func socialstudies() {
    
    }
    
    
    //@IBAction func edit() {
        
    //}

    //@IBAction func plus() {
        
    //}
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    let vc = segue.destination as! ListViewController
    //    vc.titleText = segue.identifier!
}

//Navigation barの色
