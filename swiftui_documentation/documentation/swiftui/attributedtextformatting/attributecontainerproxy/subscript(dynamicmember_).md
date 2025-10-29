---
title: subscript(dynamicMember:)
description: Access the value of the attribute to constrain.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/attributecontainerproxy/subscript(dynamicmember:)
timestamp: 2025-10-29T00:14:28.633Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting) › [attributecontainerproxy](/documentation/swiftui/attributedtextformatting/attributecontainerproxy)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Access the value of the attribute to constrain.

```swift
subscript(dynamicMember keyPath: KeyPath<AttributeDynamicLookup, Attribute>) -> Attribute.Value? { get set }
```

## Overview

For details on how attribute value constraining works, refer to [constrain(_:)](/documentation/swiftui/attributedtextvalueconstraint/constrain(_:)).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
