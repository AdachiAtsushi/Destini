//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by atsuk0r0 on 2020/07/01.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ========== IBOutlet定義 ==========
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 画面項目にテキストを反映
        updateUI()
    }

    // ========= IBAction定義 =========
    @IBAction func choiceMade(_ sender: UIButton) {
        // ユーザが選択したボタンのタイトルを取得
        let selectedButton = sender.currentTitle!
        
        // ユーザが選択したボタンをチェックする
        storyBrain.checkChoiceButton(selectedButton)
                
        // 各要素のテキストの内容を更新
        updateUI()
    }
    
    // 各要素のテキストの内容を更新
    func updateUI() {
        storyLabel.text = storyBrain.getStoryLabel()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

