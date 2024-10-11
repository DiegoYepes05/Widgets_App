//
//  test_widgetsBundle.swift
//  test_widgets
//
//  Created by Diego Yepes on 11/10/24.
//

import WidgetKit
import SwiftUI

@main
struct test_widgetsBundle: WidgetBundle {
    var body: some Widget {
        test_widgets()
        test_widgetsControl()
        test_widgetsLiveActivity()
    }
}
