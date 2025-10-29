---
title: accessibilityAdjustableAction(_:)
description: Adds an accessibility adjustable action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityadjustableaction(_:)
timestamp: 2025-10-29T00:13:58.500Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityAdjustableAction(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an accessibility adjustable action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.

```swift
nonisolated func accessibilityAdjustableAction(_ handler: @escaping (AccessibilityAdjustmentDirection) -> Void) -> ModifiedContent<Content, Modifier>
```

## Discussion

For example, this is how an adjustable action to navigate through pages could be added to a view.

```swift
var body: some View {
    PageControl()
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                // Go to next page
            case .decrement:
                // Go to previous page
            }
        }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
