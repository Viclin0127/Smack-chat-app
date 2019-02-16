//
//  ChannelVC.swift
//  Smack
//
//  Created by YuanHungLin on 2019/2/16.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 調整rear view 的大小
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
