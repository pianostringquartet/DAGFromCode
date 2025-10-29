---
title: interactionActivityTrackingTag(_:)
description: Sets a tag that you use for tracking interactivity.
source: https://developer.apple.com/documentation/swiftui/view/interactionactivitytrackingtag(_:)
timestamp: 2025-10-29T00:11:43.560Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# interactionActivityTrackingTag(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets a tag that you use for tracking interactivity.

```swift
nonisolated func interactionActivityTrackingTag(_ tag: String) -> some View
```

## Parameters

**tag**

The tag used to track user interactions hosted by this view as activities.



## Return Value

A view that uses a tracking tag.

## Discussion

The following example tracks the scrolling activity of a [List](/documentation/swiftui/list):

```swift
List {
    Section("Today") {
        ForEach(messageStore.today) { message in
            Text(message.title)
        }
    }
}
.interactionActivityTrackingTag("MessagesList")
```

The resolved activity tracking tag is additive, so using the modifier across the view hierarchy builds the tag from top to bottom. The example below shows a hierarchical usage of this modifier with the resulting tag `Home-Feed`:

```swift
var body: some View {
    Home()
        .interactionActivityTrackingTag("Home")
}

struct Home: View {
    var body: some View {
        List {
            Text("A List Item")
            Text("A Second List Item")
            Text("A Third List Item")
        }
        .interactionActivityTrackingTag("Feed")
    }
}
```

## Managing view interaction

- [disabled(_:)](/documentation/swiftui/view/disabled(_:))
- [isEnabled](/documentation/swiftui/environmentvalues/isenabled)
- [invalidatableContent(_:)](/documentation/swiftui/view/invalidatablecontent(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
