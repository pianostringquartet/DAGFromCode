---
title: destructive
description: A role that indicates a destructive button.
source: https://developer.apple.com/documentation/swiftui/buttonrole/destructive
timestamp: 2025-10-29T00:11:27.752Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttonrole](/documentation/swiftui/buttonrole)

**Type Property**

# destructive

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A role that indicates a destructive button.

```swift
static let destructive: ButtonRole
```

## Discussion

Use this role for a button that deletes user data, or performs an irreversible operation. A destructive button signals by its appearance that the user should carefully consider whether to tap or click the button. For example, SwiftUI presents a destructive button that you add with the [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:)) modifier using a red background:

```swift
List {
    ForEach(items) { item in
        Text(item.title)
            .swipeActions {
                Button(role: .destructive) { delete() } label: {
                    Label("Delete", systemImage: "trash")
                }
            }
    }
}
.navigationTitle("Shopping List")
```



## Getting button roles

- [cancel](/documentation/swiftui/buttonrole/cancel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
