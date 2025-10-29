---
title: ButtonRole
description: A value that describes the purpose of a button.
source: https://developer.apple.com/documentation/swiftui/buttonrole
timestamp: 2025-10-29T00:11:29.824Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ButtonRole

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A value that describes the purpose of a button.

```swift
struct ButtonRole
```

## Overview

A button role provides a description of a button’s purpose.  For example, the [destructive](/documentation/swiftui/buttonrole/destructive) role indicates that a button performs a destructive action, like delete user data:

```swift
Button("Delete", role: .destructive) { delete() }
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting button roles

- [cancel](/documentation/swiftui/buttonrole/cancel) A role that indicates a button that cancels an operation.
- [destructive](/documentation/swiftui/buttonrole/destructive) A role that indicates a destructive button.

## Type Properties

- [close](/documentation/swiftui/buttonrole/close) A role that indicates a button that closes the current operation.
- [confirm](/documentation/swiftui/buttonrole/confirm) A role that indicates a button that confirms an operation.

## Creating buttons

- [Button](/documentation/swiftui/button)
- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:))
- [buttonBorderShape(_:)](/documentation/swiftui/view/buttonbordershape(_:))
- [buttonRepeatBehavior(_:)](/documentation/swiftui/view/buttonrepeatbehavior(_:))
- [buttonRepeatBehavior](/documentation/swiftui/environmentvalues/buttonrepeatbehavior)
- [ButtonBorderShape](/documentation/swiftui/buttonbordershape)
- [ButtonRepeatBehavior](/documentation/swiftui/buttonrepeatbehavior)
- [ButtonSizing](/documentation/swiftui/buttonsizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
