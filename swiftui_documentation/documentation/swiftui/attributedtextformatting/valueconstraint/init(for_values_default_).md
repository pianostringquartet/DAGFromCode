---
title: init(for:values:default:)
description: Create a definition that constrains an attribute’s value to a defined set of allowed values.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/valueconstraint/init(for:values:default:)
timestamp: 2025-10-29T00:11:02.934Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting) › [valueconstraint](/documentation/swiftui/attributedtextformatting/valueconstraint)

**Initializer**

# init(for:values:default:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Create a definition that constrains an attribute’s value to a defined set of allowed values.

```swift
init(for attribute: AttributeKey.Type, values allowedValues: Set<AttributeKey.Value?>, default defaultValue: AttributeKey.Value?)
```

## Parameters

**allowedValues**

A set of values that are permitted.



**defaultValue**

A single permitted value that is used to replace any values that are not in the set of `allowedValues`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
