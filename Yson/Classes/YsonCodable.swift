//
// Created by entaoyang on 2019-01-24.
// Copyright (c) 2019 yet.net. All rights reserved.
//

import Foundation
import UIKit

public extension Yson {

	public static func toYsonObject<T: Encodable>(_ v: T) -> YsonObject? {
		do {
			let v: YsonValue? = try Yson.encode(v)
			return v as? YsonObject
		} catch {
			loge("Yson.toYsonObject Error: \(error)")
			return nil
		}
	}

	public static func toYson<T: Encodable>(_ v: T) -> YsonValue? {
		do {
			let v: YsonValue? = try Yson.encode(v)
			return v
		} catch {
			loge("Yson.toYsonObject Error: \(error)")
			return nil
		}
	}

	public static func encode<T: Encodable>(_ v: T) throws -> YsonValue? {
		let ye = YsonEncoder()
		return try ye.encode(v)
//		let e = JSONEncoder()
//		let d = try e.encode(v)
//		let s = String(data: d, encoding: .utf8)
//		if let ss = s {
//			return Yson.parse(ss)
//		}
//		return nil
	}

}

public extension Yson {

	public static func fromYson<T: Decodable>(_ type: T.Type, _ jsonValue: YsonValue) -> T? {
		do {
			return try self.decode(type, jsonValue)
		} catch {
			loge("Yson.fromYson Error: \(error),  \(jsonValue.yson)")
			return nil
		}
	}

	public static func decode<T: Decodable>(_ type: T.Type, _ jsonValue: YsonValue) throws -> T {
		return try YsonDecoder().decode(type, from: jsonValue)
//		let s = jsonValue.yson()
//		let d = JSONDecoder()
//		return try d.decode(type, from: s.dataUtf8)
	}

}

public extension YsonValue {

	public func toModel<V: Decodable>() -> V? {
		return Yson.fromYson(V.self, self)
	}

}

public extension Encodable {

	public var toYsonValue: YsonValue {
		do {
			let y = try Yson.encode(self)
			return y!
		} catch {
			loge("toYson error: \(error)")
			return YsonNull.inst
		}
	}

	public var toYsonObject: YsonObject {
		return self.toYsonValue as! YsonObject
	}

	public func dumpYson() {
		logd(self.toYsonValue.yson)
	}
}