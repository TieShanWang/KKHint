//
//  ViewController.swift
//  KKHint
//
//  Created by 王铁山 on 2017/7/5.
//  Copyright © 2017年 king. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func autoDismiss(_ sender: Any) {
        self.view.makeHint("我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`我马上就消失了`")
    }
    
    @IBAction func always(_ sender: Any) {
        self.view.makeCTHint(title: "一直显示", content: "我会一直显示哦")
    }
    
    @IBAction func hintBelowNav(_ sender: Any) {
        self.view.makeHintBlowNaviBar(title: "我显示在导航下面哦")
    }

    @IBAction func hintBottom(_ sender: Any) {
        self.view.makeHint(title: "我显示在底部哦", superBot: 20)
    }
    
    @IBAction func hintTop(_ sender: Any) {
        self.view.makeHint(title: "我显示在顶部哦", superTop: 20)
    }
    
    @IBAction func success(_ sender: Any) {
        KKHint.showSuccess("成功", toView: self.view)
    }
    
    @IBAction func fail(_ sender: Any) {
        KKHint.showError("失败", toView: self.view)
    }
    
    @IBAction func start(_ sender: Any) {
        self.view.makeActivity(title: "我马上就消失了`我马上就消失了`我马上")
    }
    @IBAction func end(_ sender: Any) {
        self.view.hiddenActivity()
        
        let newView = KKHintView.showInView(self.view, type: .text)
        
        newView.titleLabel.text = "我马上就消失了`我马上就消失了`我马上我马上就消失了`我马上就消失了`我马上"
        
        
        
//        KKHintView.showInView(self.view, icon: UIImage(named: "d"), title: "我马上就消失了`我马上就消失了`我马上我马上就消失了`我马上就消失了`我马上", detail: "我马上就消失了`我马上就消失了`我马上我马上就消失了`我马上就消失了`我马上")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

