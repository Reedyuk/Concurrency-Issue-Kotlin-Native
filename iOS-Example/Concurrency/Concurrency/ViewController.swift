//
//  ViewController.swift
//  Concurrency
//
//  Created by Andrew Reed on 15/12/2018.
//  Copyright © 2018 Concurrency. All rights reserved.
//

import UIKit
import Concurrency_Issue

class ViewController: UIViewController {

    let concurrencyObject = Concurrency(displayName: "test")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(concurrencyObject)
        DispatchQueue.global(qos: .background).async {
            print(self.concurrencyObject)
        }
    }


}

