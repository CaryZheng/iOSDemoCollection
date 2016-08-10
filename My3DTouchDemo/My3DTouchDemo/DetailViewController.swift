//
//  DetailViewController.swift
//  My3DTouchDemo
//
//  Created by CaryZheng on 16/8/10.
//  Copyright © 2016年 CaryZheng. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.redColor()
    }
    
    override func previewActionItems() -> [UIPreviewActionItem] {
        let action1 = UIPreviewAction(title: "Action 1", style: .Default) { (action, viewController) -> Void in
            print("Action 1 selected")
        }
        
        let action2 = UIPreviewAction(title: "Action 2", style: .Destructive) { (action, viewController) -> Void in
            print("Action 2 selected")
        }
        
        return [action1, action2]
    }
    
}