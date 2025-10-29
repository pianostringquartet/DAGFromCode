---
title: combine
description: Any child accessibility element’s properties are merged into the new accessibility element.
source: https://developer.apple.com/documentation/swiftui/accessibilitychildbehavior/combine
timestamp: 2025-10-29T00:13:19.817Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilitychildbehavior](/documentation/swiftui/accessibilitychildbehavior)

**Type Property**

# combine

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Any child accessibility element’s properties are merged into the new accessibility element.

```swift
static let combine: AccessibilityChildBehavior
```

## Discussion

Use this behavior when you want a view represented by a single accessibility element. The new accessibility element merges properties from all non-hidden children. Some properties may be transformed or ignored to achieve the ideal combined result. For example, not all of [Accessibility Traits](/documentation/swiftui/accessibilitytraits) are merged and a [default](/documentation/swiftui/accessibilityactionkind/default) action may become a named action ([init(named:)](/documentation/swiftui/accessibilityactionkind/init(named:))).

```swift
struct UserCell: View {
    var user: User

    var body: some View {
        VStack {
            Image(user.image)
            Text(user.name)
            Button("Options", action: showOptions)
        }
        .accessibilityElement(children: .combine)
    }
}
```

A new accessibility element is created when:

- The view contains multiple or zero accessibility elements
- The view wraps a [UIView Representable](/documentation/swiftui/uiviewrepresentable)/[NSView Representable](/documentation/swiftui/nsviewrepresentable).

> [!NOTE]
> If an accessibility element is not created, the [Accessibility Child Behavior](/documentation/swiftui/accessibilitychildbehavior) of the existing accessibility element is modified.

## Getting behaviors

- [contain](/documentation/swiftui/accessibilitychildbehavior/contain)
- [ignore](/documentation/swiftui/accessibilitychildbehavior/ignore)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
