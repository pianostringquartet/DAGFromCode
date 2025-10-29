---
title: updateNSView(_:context:)
description: Updates the state of the specified view with new information from SwiftUI.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentable/updatensview(_:context:)
timestamp: 2025-10-29T00:14:07.599Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewrepresentable](/documentation/swiftui/nsviewrepresentable)

**Instance Method**

# updateNSView(_:context:)

**Available on:** macOS 10.15+

> Updates the state of the specified view with new information from SwiftUI.

```swift
@MainActor @preconcurrency func updateNSView(_ nsView: Self.NSViewType, context: Self.Context)
```

## Parameters

**nsView**

Your custom view object.



**context**

A context structure containing information about the current state of the system.



## Discussion

When the state of your app changes, SwiftUI updates the portions of your interface affected by those changes. SwiftUI calls this method for any changes affecting the corresponding AppKit view. Use this method to update the configuration of your view to match the new state information provided in the `context` parameter.

## Creating and updating the view

- [makeNSView(context:)](/documentation/swiftui/nsviewrepresentable/makensview(context:))
- [NSViewRepresentable.Context](/documentation/swiftui/nsviewrepresentable/context)
- [NSViewType](/documentation/swiftui/nsviewrepresentable/nsviewtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
