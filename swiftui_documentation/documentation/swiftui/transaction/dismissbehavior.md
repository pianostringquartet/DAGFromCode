---
title: dismissBehavior
description: The behavior for how windows will dismiss programmatically when used in conjunction with .
source: https://developer.apple.com/documentation/swiftui/transaction/dismissbehavior
timestamp: 2025-10-29T00:11:07.034Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# dismissBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The behavior for how windows will dismiss programmatically when used in conjunction with .

```swift
var dismissBehavior: DismissBehavior { get set }
```

## Discussion

The default value is `.interactive`.

You can use this property to dismiss windows which may be showing a modal presentation by using the `.destructive` value:

```swift
struct DismissWindowButton: View {
    @Environment(\.dismissWindow) private var dismissWindow

    var body: some View {
        Button("Close Auxiliary Window") {
            withTransaction(\.dismissBehavior, .destructive) {
                dismissWindow(id: "auxiliary")
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
