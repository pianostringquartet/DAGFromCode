---
title: updateUIView(_:context:)
description: Updates the state of the specified view with new information from SwiftUI.
source: https://developer.apple.com/documentation/swiftui/uiviewrepresentable/updateuiview(_:context:)
timestamp: 2025-10-29T00:09:56.987Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewrepresentable](/documentation/swiftui/uiviewrepresentable)

**Instance Method**

# updateUIView(_:context:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Updates the state of the specified view with new information from SwiftUI.

```swift
@MainActor @preconcurrency func updateUIView(_ uiView: Self.UIViewType, context: Self.Context)
```

## Parameters

**uiView**

Your custom view object.



**context**

A context structure containing information about the current state of the system.



## Discussion

When the state of your app changes, SwiftUI updates the portions of your interface affected by those changes. SwiftUI calls this method for any changes affecting the corresponding UIKit view. Use this method to update the configuration of your view to match the new state information provided in the `context` parameter.

## Creating and updating the view

- [makeUIView(context:)](/documentation/swiftui/uiviewrepresentable/makeuiview(context:))
- [UIViewRepresentable.Context](/documentation/swiftui/uiviewrepresentable/context)
- [UIViewType](/documentation/swiftui/uiviewrepresentable/uiviewtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
