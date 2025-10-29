---
title: buildEither(second:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is false.
source: https://developer.apple.com/documentation/swiftui/compositorcontentbuilder/buildeither(second:)
timestamp: 2025-10-29T00:09:44.856Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontentbuilder](/documentation/swiftui/compositorcontentbuilder)

**Type Method**

# buildEither(second:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is false.

```swift
static func buildEither<F>(second: F) -> _ConditionalContent<_LimitedAvailabilityCompositorContent, F> where F : CompositorContent
```

## Discussion

Conditional statements in a [Compositor Content Builder](/documentation/swiftui/compositorcontentbuilder) must contain both an `if` statement and an `else` statement, and the condition can only perform a compiler check for availability, like in the following code:

```swift
var body: some CompositorContent {
    if #available(visionOS 100, *) {
        MyNewContent()
    } else {
        MyOldContent()
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
