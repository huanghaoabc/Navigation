//
//  ViewController.swift
//  NavigationDemo
//
//  Created by gdcp on 2018/3/28.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit
var i=1
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        self.title="第\(i)个视图控制器"
        let btn=UIButton(type:.system)
        btn.frame=CGRect(x: 50, y: 100, width: 100, height: 100)
        btn.setTitle("push", for: .normal)
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        
        
        let btn2=UIButton(type:.system)
        btn2.setTitle("pop", for: .normal)
        btn2.frame=CGRect(x: 50, y: 150, width: 100, height: 100)
        btn2.addTarget(self, action: #selector(pop), for: .touchUpInside)
        
        let btn3=UIButton(type:.system)
        btn3.frame=CGRect(x: 50, y: 300, width: 100, height: 100)
        btn3.setTitle("返回首页", for: .normal)
        btn3.addTarget(self, action: #selector(first), for: .touchUpInside)
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
    }

    func push(){
        let controller=ViewController()
        self.navigationController?.pushViewController(controller, animated: true)
        i+=1
    }
    func pop(){
        self.navigationController?.popViewController(animated: true)
    }
    func first(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    deinit {
        i-=1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

