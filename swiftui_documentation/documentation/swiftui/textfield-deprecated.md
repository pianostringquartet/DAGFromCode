---
title: Deprecated initializers
description: Review deprecated text field initializers.
source: https://developer.apple.com/documentation/swiftui/textfield-deprecated
timestamp: 2025-10-29T00:10:26.235Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Deprecated initializers

> Review deprecated text field initializers.

## Overview

Use view modifiers to specify change and commit behaviors for a text field when replacing these initializers. Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) view modifier to get the behavior provided by the `onCommit` parameter. Use [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:)) and [Focus State](/documentation/swiftui/focusstate) to get the behavior provided by the `onEditingChanged` parameter.

## Creating a text field with a string

- [init(_:text:onEditingChanged:onCommit:)](/documentation/swiftui/textfield/init(_:text:oneditingchanged:oncommit:)) Creates a text field with a text label generated from a localized title string.
- [init(_:text:onCommit:)](/documentation/swiftui/textfield/init(_:text:oncommit:)) Creates a text field with a text label generated from a localized title string.
- [init(_:text:onEditingChanged:)](/documentation/swiftui/textfield/init(_:text:oneditingchanged:)) Creates a text field with a text label generated from a localized title string.

## Creating a text field with a value

- [init(_:value:formatter:onEditingChanged:onCommit:)](/documentation/swiftui/textfield/init(_:value:formatter:oneditingchanged:oncommit:)) Creates an instance which binds over an arbitrary type, .
- [init(_:value:formatter:onCommit:)](/documentation/swiftui/textfield/init(_:value:formatter:oncommit:)) Create an instance which binds over an arbitrary type, .
- [init(_:value:formatter:onEditingChanged:)](/documentation/swiftui/textfield/init(_:value:formatter:oneditingchanged:)) Create an instance which binds over an arbitrary type, .

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
