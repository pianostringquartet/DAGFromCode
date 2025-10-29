---
title: constrain(_:)
description: Applies all value constraints to a given attribute container.
source: https://developer.apple.com/documentation/swiftui/attributedtextformattingdefinition/constrain(_:)
timestamp: 2025-10-29T00:09:35.205Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformattingdefinition](/documentation/swiftui/attributedtextformattingdefinition)

**Instance Method**

# constrain(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Applies all value constraints to a given attribute container.

```swift
func constrain(_ container: inout AttributeContainer)
```

## Discussion

Modifies the given `container` by applying all [Attributed Text Value Constraint](/documentation/swiftui/attributedtextvalueconstraint)s that are part of this definition to the container.

Use this function to test your [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition), or to ensure your constraints are applied before passing content to API that cannot itself apply the definition.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
