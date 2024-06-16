//
//  Atomic.swift
//  Go Map!!
//
//  Created by Bryce Cogswell on 5/12/21.
//  Copyright © 2021 Bryce Cogswell. All rights reserved.
//

import Foundation

struct AtomicInt {
	private var count: Int
	private let semaphore = DispatchSemaphore(value: 1)
	private func wait() { semaphore.wait() }
	private func signal() { semaphore.signal() }

	init(_ count: Int) {
		self.count = count
	}

	mutating func increment(_ delta: Int = 1) {
		wait(); defer { signal() }
		count += delta
	}

	mutating func decrement() {
		wait(); defer { signal() }
		count -= 1
	}

	func value() -> Int {
		wait(); defer { signal() }
		return count
	}
}
