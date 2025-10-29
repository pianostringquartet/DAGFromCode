---
title: AttributedTextFormatting.AttributeContainerProxy
description: A proxy for a partially validated set of attributes.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/attributecontainerproxy
timestamp: 2025-10-29T00:09:42.763Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting)

**Structure**

# AttributedTextFormatting.AttributeContainerProxy

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A proxy for a partially validated set of attributes.

```swift
@dynamicMemberLookup struct AttributeContainerProxy<Scope, Attribute> where Scope : AttributeScope, Attribute : AttributedStringKey, Attribute.Value : Sendable
```

## Overview

Exposes `Attribute` as read-write and all other attributes as read-only. The type automatically queries the underlying [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) to constrain values that are accessed.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Structures

- [AttributedTextFormatting.AttributeContainerProxy.Scoped](/documentation/swiftui/attributedtextformatting/attributecontainerproxy/scoped) A scoped proxy for a partially validated set of attributes.

## Subscripts

- [subscript(_:)](/documentation/swiftui/attributedtextformatting/attributecontainerproxy/subscript(_:)) Access the value of the attribute to constrain.
- [subscript(dynamicMember:)](/documentation/swiftui/attributedtextformatting/attributecontainerproxy/subscript(dynamicmember:)) Access the value of the attribute to constrain.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
