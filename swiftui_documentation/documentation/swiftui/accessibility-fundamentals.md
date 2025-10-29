---
title: Accessibility fundamentals
description: Make your SwiftUI apps accessible to everyone, including people with disabilities.
source: https://developer.apple.com/documentation/swiftui/accessibility-fundamentals
timestamp: 2025-10-29T00:10:28.647Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Accessibility fundamentals

> Make your SwiftUI apps accessible to everyone, including people with disabilities.

## Overview

Like all Apple UI frameworks, SwiftUI comes with built-in accessibility support. The framework introspects common elements like navigation views, lists, text fields, sliders, buttons, and so on, and provides basic accessibility labels and values by default. You don’t have to do any extra work to enable these standard accessibility features.



SwiftUI also provides tools to help you enhance the accessibility of your app. To find out what enhancements you need, try using your app with accessibility features like VoiceOver, Voice Control, and Switch Control, or get feedback from users of your app that regularly use these features. Then use the accessibility view modifiers that SwiftUI provides to improve the experience. For example, you can explicitly add accessibility labels to elements in your UI using the [accessibilityLabel(_:)](/documentation/swiftui/view/accessibilitylabel(_:)) or the [accessibilityValue(_:)](/documentation/swiftui/view/accessibilityvalue(_:)) view modifier.

Customize your use of accessibility modifiers for all the platforms that your app runs on. For example, you may need to adjust the accessibility elements for a companion Apple Watch app that shares a common code base with an iOS app. If you integrate AppKit or UIKit controls in SwiftUI, expose any accessibility labels and make them accessible from your [NSView Representable](/documentation/swiftui/nsviewrepresentable) or [UIView Representable](/documentation/swiftui/uiviewrepresentable) views, or provide custom accessibility information if the underlying accessibility labels aren’t available.

For design guidance, see [accessibility](/design/Human-Interface-Guidelines/accessibility) in the Human Interface Guidelines.

## Essentials

- [Creating accessible views](/documentation/swiftui/creating-accessible-views) Make your app accessible to everyone by applying accessibility modifiers to your SwiftUI views.

## Creating accessible elements

- [accessibilityElement(children:)](/documentation/swiftui/view/accessibilityelement(children:)) Creates a new accessibility element, or modifies the  of the existing accessibility element.
- [accessibilityChildren(children:)](/documentation/swiftui/view/accessibilitychildren(children:)) Replaces the existing accessibility element’s children with one or more new synthetic accessibility elements.
- [accessibilityRepresentation(representation:)](/documentation/swiftui/view/accessibilityrepresentation(representation:)) Replaces one or more accessibility elements for this view with new accessibility elements.
- [AccessibilityChildBehavior](/documentation/swiftui/accessibilitychildbehavior) Defines the behavior for the child elements of the new parent element.

## Identifying elements

- [accessibilityIdentifier(_:)](/documentation/swiftui/view/accessibilityidentifier(_:)) Uses the string you specify to identify the view.
- [accessibilityIdentifier(_:isEnabled:)](/documentation/swiftui/view/accessibilityidentifier(_:isenabled:)) Uses the string you specify to identify the view.

## Hiding elements

- [accessibilityHidden(_:)](/documentation/swiftui/view/accessibilityhidden(_:)) Specifies whether to hide this view from system accessibility features.
- [accessibilityHidden(_:isEnabled:)](/documentation/swiftui/view/accessibilityhidden(_:isenabled:)) Specifies whether to hide this view from system accessibility features.

## Supporting types

- [AccessibilityTechnologies](/documentation/swiftui/accessibilitytechnologies) Accessibility technologies available to the system.
- [AccessibilityAttachmentModifier](/documentation/swiftui/accessibilityattachmentmodifier) A view modifier that adds accessibility properties to the view

## Accessibility

- [Accessible appearance](/documentation/swiftui/accessible-appearance)
- [Accessible controls](/documentation/swiftui/accessible-controls)
- [Accessible descriptions](/documentation/swiftui/accessible-descriptions)
- [Accessible navigation](/documentation/swiftui/accessible-navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
