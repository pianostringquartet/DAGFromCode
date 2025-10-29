---
title: buildOptional(_:)
description: Produces an optional widget for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.
source: https://developer.apple.com/documentation/swiftui/widgetbundlebuilder/buildoptional(_:)
timestamp: 2025-10-29T00:14:53.269Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetbundlebuilder](/documentation/swiftui/widgetbundlebuilder)

**Type Method**

# buildOptional(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> Produces an optional widget for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.

```swift
static func buildOptional(_ widget: (any Widget & _LimitedAvailabilityWidgetMarker)?) -> some Widget
```

## Discussion

Conditional statements in a [Widget Bundle Builder](/documentation/swiftui/widgetbundlebuilder) can contain an `if` statement but not an `else` statement, and the condition can only perform a compiler check for availability, like in the following code:

```swift
var body: some Widget {
    if #available(iOS 16, *) {
        WindowGroup {
            ContentView()
        }
    }
}
```

## Bundling widgets

- [buildBlock()](/documentation/swiftui/widgetbundlebuilder/buildblock())
- [buildBlock(_:)](/documentation/swiftui/widgetbundlebuilder/buildblock(_:))
- [buildExpression(_:)](/documentation/swiftui/widgetbundlebuilder/buildexpression(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/widgetbundlebuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
