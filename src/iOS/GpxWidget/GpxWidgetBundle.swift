//
//  GpxWidgetBundle.swift
//  GpxWidget
//
//  Created by Bryce Cogswell on 5/5/24.
//  Copyright © 2024 Bryce Cogswell. All rights reserved.
//

#if canImport(ActivityKit)
import SwiftUI
import WidgetKit

@main
struct GpxWidgetBundle: WidgetBundle {
	var body: some Widget {
		GpxWidgetLiveActivity()
	}
}
#endif
