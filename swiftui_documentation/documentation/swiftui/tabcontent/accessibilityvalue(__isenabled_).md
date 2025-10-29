---
title: accessibilityValue(_:isEnabled:)
description: Adds a textual description of the value that the tab contains.
source: https://developer.apple.com/documentation/swiftui/tabcontent/accessibilityvalue(_:isenabled:)
timestamp: 2025-10-29T00:15:22.619Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# accessibilityValue(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds a textual description of the value that the tab contains.

```swift
nonisolated func accessibilityValue(_ valueDescription: Text, isEnabled: Bool = true) -> some TabContent<Self.TabValue>
```

## Parameters

**valueDescription**

The accessibility value to apply.



**isEnabled**

If true the accessibility value is applied; otherwise the accessibility value is unchanged.



## Discussion

Use this method to describe the value represented by a tab, but only if that’s different than the tab’s label such as when an icon represent information about a tab.

```swift
var body: some View {
    TabView {
        Tab {
            MessagesView()
        } label: {
            Text("Messages")
        }
        .badge(30)
        .accessibilityValue("30 Unread")
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
