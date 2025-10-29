---
title: ignore
description: Any child accessibility elements become hidden.
source: https://developer.apple.com/documentation/swiftui/accessibilitychildbehavior/ignore
timestamp: 2025-10-29T00:12:18.832Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilitychildbehavior](/documentation/swiftui/accessibilitychildbehavior)

**Type Property**

# ignore

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Any child accessibility elements become hidden.

```swift
static let ignore: AccessibilityChildBehavior
```

## Discussion

Use this behavior when you want a view represented by a single accessibility element. The new accessibility element has no initial properties. So you will need to use other accessibility modifiers, such as [accessibilityLabel(_:)](/documentation/swiftui/view/accessibilitylabel(_:)), to begin making it accessible.

```swift
var body: some View {
    VStack {
        Button("Previous Page", action: goBack)
        Text("\(pageNumber)")
        Button("Next Page", action: goForward)
    }
    .accessibilityElement(children: .ignore)
    .accessibilityValue("Page \(pageNumber) of \(pages.count)")
    .accessibilityAdjustableAction { action in
        if action == .increment {
            goForward()
        } else {
            goBack()
        }
    }
}
```

Before using the  [ignore](/documentation/swiftui/accessibilitychildbehavior/ignore)behavior, consider using the [combine](/documentation/swiftui/accessibilitychildbehavior/combine) behavior.

> [!NOTE]
> A new accessibility element is always created.

## Getting behaviors

- [combine](/documentation/swiftui/accessibilitychildbehavior/combine)
- [contain](/documentation/swiftui/accessibilitychildbehavior/contain)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
