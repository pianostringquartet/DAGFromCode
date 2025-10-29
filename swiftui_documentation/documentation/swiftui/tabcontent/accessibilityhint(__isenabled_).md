---
title: accessibilityHint(_:isEnabled:)
description: Communicates to the user what happens after selecting the tab.
source: https://developer.apple.com/documentation/swiftui/tabcontent/accessibilityhint(_:isenabled:)
timestamp: 2025-10-29T00:09:35.393Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# accessibilityHint(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Communicates to the user what happens after selecting the tab.

```swift
nonisolated func accessibilityHint(_ hint: LocalizedStringResource, isEnabled: Bool = true) -> some TabContent<Self.TabValue>
```

## Parameters

**hint**

The accessibility hint to apply.



**isEnabled**

If true the accessibility hint is applied; otherwise the accessibility hint is unchanged.



## Discussion

Provide a hint in the form of a brief phrase, like “Open shopping cart” or “Show downloaded attachments”.

```swift
var body: some View {
    TabView {
        Tab {
            MessagesView()
        } label: {
            Image(systemName: "play")
        }
        .accessibilityHint("Select videos to download")
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
