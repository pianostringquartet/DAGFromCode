---
title: contain
description: Any child accessibility elements become children of the new accessibility element.
source: https://developer.apple.com/documentation/swiftui/accessibilitychildbehavior/contain
timestamp: 2025-10-29T00:15:26.536Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilitychildbehavior](/documentation/swiftui/accessibilitychildbehavior)

**Type Property**

# contain

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Any child accessibility elements become children of the new accessibility element.

```swift
static let contain: AccessibilityChildBehavior
```

## Discussion

Use this behavior when you want a view to be an accessibility container. An accessibility container groups child accessibility elements which improves navigation. For example, all children of an accessibility container are navigated in order before navigating through the next accessibility container.

```swift
var body: some View {
    ScrollView {
        VStack {
            HStack {
                ForEach(users) { user in
                    UserCell(user)
                }
            }
            .accessibilityElement(children: .contain)
            .accessibilityLabel("Users")

            VStack {
                ForEach(messages) { message in
                    MessageCell(message)
                }
            }
            .accessibilityElement(children: .contain)
            .accessibilityLabel("Messages")
        }
    }
}
```

A new accessibility element is created when:

- The view contains multiple or zero accessibility elements
- The view contains a single accessibility element with no children

> [!NOTE]
> If an accessibility element is not created, the [Accessibility Child Behavior](/documentation/swiftui/accessibilitychildbehavior) of the existing accessibility element is modified.

## Getting behaviors

- [combine](/documentation/swiftui/accessibilitychildbehavior/combine)
- [ignore](/documentation/swiftui/accessibilitychildbehavior/ignore)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
