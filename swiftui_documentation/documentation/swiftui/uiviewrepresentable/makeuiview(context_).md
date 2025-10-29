---
title: makeUIView(context:)
description: Creates the view object and configures its initial state.
source: https://developer.apple.com/documentation/swiftui/uiviewrepresentable/makeuiview(context:)
timestamp: 2025-10-29T00:09:53.977Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewrepresentable](/documentation/swiftui/uiviewrepresentable)

**Instance Method**

# makeUIView(context:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Creates the view object and configures its initial state.

```swift
@MainActor @preconcurrency func makeUIView(context: Self.Context) -> Self.UIViewType
```

## Parameters

**context**

A context structure containing information about the current state of the system.



## Return Value

Your UIKit view configured with the provided information.

## Discussion

You must implement this method and use it to create your view object. Configure the view using your app’s current data and contents of the `context` parameter. The system calls this method only once, when it creates your view for the first time. For all subsequent updates, the system calls the [updateUIView(_:context:)](/documentation/swiftui/uiviewrepresentable/updateuiview(_:context:)) method.

## Creating and updating the view

- [updateUIView(_:context:)](/documentation/swiftui/uiviewrepresentable/updateuiview(_:context:))
- [UIViewRepresentable.Context](/documentation/swiftui/uiviewrepresentable/context)
- [UIViewType](/documentation/swiftui/uiviewrepresentable/uiviewtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
