---
title: GroupedFormStyle
description: A form style with grouped rows.
source: https://developer.apple.com/documentation/swiftui/groupedformstyle
timestamp: 2025-10-29T00:12:56.897Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GroupedFormStyle

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A form style with grouped rows.

```swift
struct GroupedFormStyle
```

## Overview

Rows in this form style have leading aligned labels and trailing aligned controls within visually grouped sections.

Use the [grouped](/documentation/swiftui/formstyle/grouped) static variable to create this style:

```swift
Form {
   ...
}
.formStyle(.grouped)
```

## Conforms To

- [FormStyle](/documentation/swiftui/formstyle)

## Creating the form style

- [init()](/documentation/swiftui/groupedformstyle/init()) Creates a form style with scrolling, grouped rows.

## Supporting types

- [AutomaticFormStyle](/documentation/swiftui/automaticformstyle)
- [ColumnsFormStyle](/documentation/swiftui/columnsformstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
