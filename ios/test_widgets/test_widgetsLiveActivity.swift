//
//  test_widgetsLiveActivity.swift
//  test_widgets
//
//  Created by Diego Yepes on 11/10/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct test_widgetsAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct test_widgetsLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: test_widgetsAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension test_widgetsAttributes {
    fileprivate static var preview: test_widgetsAttributes {
        test_widgetsAttributes(name: "World")
    }
}

extension test_widgetsAttributes.ContentState {
    fileprivate static var smiley: test_widgetsAttributes.ContentState {
        test_widgetsAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: test_widgetsAttributes.ContentState {
         test_widgetsAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: test_widgetsAttributes.preview) {
   test_widgetsLiveActivity()
} contentStates: {
    test_widgetsAttributes.ContentState.smiley
    test_widgetsAttributes.ContentState.starEyes
}
