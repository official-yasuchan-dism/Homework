//
//  ColorViewController.swift
//  Homework
//
//  Created by Yuma on 2020/07/05.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    
    var saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 18 // 表示するセルの数
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) // 表示するセルを登録(先程命名した"Cell")
            cell.backgroundColor = .red  // セルの色
            return cell
        }
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func completeButton() { 
        self.dismiss(animated: true, completion: nil)
        //OKボタンで前の画面に戻る
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
