---
title: constrain(_:)
description: Enforce constraints on the attribute.
source: https://developer.apple.com/documentation/swiftui/attributedtextvalueconstraint/constrain(_:)
timestamp: 2025-10-29T00:11:33.600Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextvalueconstraint](/documentation/swiftui/attributedtextvalueconstraint)

**Instance Method**

# constrain(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Enforce constraints on the attribute.

```swift
func constrain(_ container: inout Self.Attributes)
```

## Discussion

A function that transforms the [Attribute Key](/documentation/swiftui/attributedtextvalueconstraint/attributekey) on the given `container` so it represents a formatting that the conforming type defines to be valid.

This function can generally read any attribute on `container` and it will produce a value that has been constrained by all [Attributed Text Value Constraint](/documentation/swiftui/attributedtextvalueconstraint) listed in the associated text formatting definition above the constraint reading the attribute.

Consider the following example:

```swift
struct NoEqualForegroundAndBackground: AttributedTextValueConstraint {
    typealias Scope = MyTextFormattingDefinition.Scope
    typealias AttributeKey = AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute

    func constrain(
        _ container: inout Attributes
    ) {
        if let color = container.foregroundColor,
           container.backgroundColor == color
        {
            container.backgroundColor = nil
        }
    }
}
```

When this constrain function accesses `container.foregroundColor`, the system establishes that the background color depends on the foreground color. At that time, it checks if the [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) this constraint is part of defines constraints on the foreground color *above* `NoEqualForegroundAndBackground` and applies them. Thus, when the access to `container.foregroundColor` returns, this function reads the constrained value.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
