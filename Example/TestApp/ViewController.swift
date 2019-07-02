//
//  ViewController.swift
//  TestApp
//
//  Created by entaoyang on 2019-07-03.
//  Copyright © 2019 entao.dev. All rights reserved.
//

import UIKit
import Yson

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let a = YsonObject()
		a.put("name", "Yang")
		a.put("age", 99)
		let s = a.yson
		print(s)
	}

}
