//
//  ChatVC.swift
//  Smack
//
//  Created by YuanHungLin on 2019/2/16.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
   
    // Outlet
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // 增加滑動功能
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // 增加 tap 離開功能
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
