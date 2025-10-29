---
title: AttributedTextFormatting.AttributeContainerProxy.Scoped
description: A scoped proxy for a partially validated set of attributes.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/attributecontainerproxy/scoped
timestamp: 2025-10-29T00:13:35.787Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting) › [attributecontainerproxy](/documentation/swiftui/attributedtextformatting/attributecontainerproxy)

**Structure**

# AttributedTextFormatting.AttributeContainerProxy.Scoped

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A scoped proxy for a partially validated set of attributes.

```swift
@dynamicMemberLookup struct Scoped<Subscope> where Subscope : AttributeScope
```

## Overview

Exposes `Attribute` as read-write and all other attributes in the scope as read-only. The type automatically queries the underlying [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) to constrain values that are accessed.

> [!NOTE]
> This is equivalent to an [Attribute Container Proxy](/documentation/swiftui/attributedtextformatting/attributecontainerproxy), except it only provides dynamic member lookup for attributes in a certain `Subscope`.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Subscripts

- [subscript(dynamicMember:)](/documentation/swiftui/attributedtextformatting/attributecontainerproxy/scoped/subscript(dynamicmember:)) Access the value of the attribute to constrain.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
