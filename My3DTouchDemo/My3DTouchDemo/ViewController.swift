//
//  ViewController.swift
//  My3DTouchDemo
//
//  Created by CaryZheng on 16/8/9.
//  Copyright © 2016年 CaryZheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Add test button
        let btn = UIButton(type: .System)
        btn.setTitle("Peek & Pop Test: click me", forState: .Normal)
        btn.sizeToFit()
        btn.backgroundColor = UIColor.yellowColor()
        btn.center = self.view.center

        self.view.addSubview(btn)
        
        // register preview
        if .Available == traitCollection.forceTouchCapability {
            registerForPreviewingWithDelegate(self, sourceView: btn)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        return DetailViewController()
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        showViewController(viewControllerToCommit, sender: self)
    }
    
}

