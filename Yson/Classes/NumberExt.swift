//
// Created by entaoyang@163.com on 2017/10/12.
// Copyright (c) 2017 yet.net. All rights reserved.
//

import Foundation
import UIKit

typealias Long = Int64

func /(lhs: CGFloat, rhs: Int) -> CGFloat {
	lhs / CGFloat(rhs)
}

func *(lhs: CGFloat, rhs: Int) -> CGFloat {
	lhs * CGFloat(rhs)
}

extension NSNumber {
	var isInteger: Bool {
		!self.stringValue.contains(".")
	}
}

extension CGFloat {

	var num: NSNumber {
		NSNumber(value: Double(self))
	}
	var s: String {
		"\(self)"
	}

}

extension Double {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension Float {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var s: String {
		"\(self)"
	}
}

extension Int8 {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension Int16 {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension Int32 {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension Int64 {
	var num: NSNumber {
		NSNumber(value: self)
	}
}

extension Int {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension UInt {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension UInt8 {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension UInt16 {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension UInt32 {
	var num: NSNumber {
		NSNumber(value: self)
	}
	var f: CGFloat {
		CGFloat(self)
	}
	var s: String {
		"\(self)"
	}
}

extension UInt64 {
	var num: NSNumber {
		NSNumber(value: self)
	}
}

extension Double {
	func keepDot(_ n: Int) -> String {
		String(format: "%.\(n)f", arguments: [self])
	}
}

extension Int64 {
	var date: Date {
		Date(timeIntervalSince1970: Double(self / 1000))
	}
}



