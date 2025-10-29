---
title: Accessible navigation
description: Enable users to navigate to specific user interface elements using rotors.
source: https://developer.apple.com/documentation/swiftui/accessible-navigation
timestamp: 2025-10-29T00:13:46.861Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Accessible navigation

> Enable users to navigate to specific user interface elements using rotors.

## Overview

An accessibility rotor is a shortcut that enables users to quickly navigate to specific elements of the user interface, and, optionally, to specific ranges of text within those elements.



The system automatically provides rotors for many navigable elements, but you can supply additional rotors for specific purposes, or replace system rotors when they don’t automatically pick up off-screen elements, like those far down in a [Lazy VStack](/documentation/swiftui/lazyvstack) or a [List](/documentation/swiftui/list).

For design guidance, see [accessibility#Navigation](/design/Human-Interface-Guidelines/accessibility) in the Accessibility section of the Human Interface Guidelines.

## Working with rotors

- [accessibilityRotor(_:entries:)](/documentation/swiftui/view/accessibilityrotor(_:entries:)) Create an Accessibility Rotor with the specified user-visible label, and entries generated from the content closure.
- [accessibilityRotor(_:entries:entryID:entryLabel:)](/documentation/swiftui/view/accessibilityrotor(_:entries:entryid:entrylabel:)) Create an Accessibility Rotor with the specified user-visible label and entries.
- [accessibilityRotor(_:entries:entryLabel:)](/documentation/swiftui/view/accessibilityrotor(_:entries:entrylabel:)) Create an Accessibility Rotor with the specified user-visible label and entries.
- [accessibilityRotor(_:textRanges:)](/documentation/swiftui/view/accessibilityrotor(_:textranges:)) Create an Accessibility Rotor with the specified user-visible label and entries for each of the specified ranges. The Rotor will be attached to the current Accessibility element, and each entry will go the specified range of that element.

## Creating rotors

- [AccessibilityRotorContent](/documentation/swiftui/accessibilityrotorcontent) Content within an accessibility rotor.
- [AccessibilityRotorContentBuilder](/documentation/swiftui/accessibilityrotorcontentbuilder) Result builder you use to generate rotor entry content.
- [AccessibilityRotorEntry](/documentation/swiftui/accessibilityrotorentry) A struct representing an entry in an Accessibility Rotor.

## Replacing system rotors

- [AccessibilitySystemRotor](/documentation/swiftui/accessibilitysystemrotor) Designates a Rotor that replaces one of the automatic, system-provided Rotors with a developer-provided Rotor.

## Configuring rotors

- [accessibilityRotorEntry(id:in:)](/documentation/swiftui/view/accessibilityrotorentry(id:in:)) Defines an explicit identifier tying an Accessibility element for this view to an entry in an Accessibility Rotor.
- [accessibilityLinkedGroup(id:in:)](/documentation/swiftui/view/accessibilitylinkedgroup(id:in:)) Links multiple accessibility elements so that the user can quickly navigate from one element to another, even when the elements are not near each other in the accessibility hierarchy.
- [accessibilitySortPriority(_:)](/documentation/swiftui/view/accessibilitysortpriority(_:)) Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.

## Accessibility

- [Accessibility fundamentals](/documentation/swiftui/accessibility-fundamentals)
- [Accessible appearance](/documentation/swiftui/accessible-appearance)
- [Accessible controls](/documentation/swiftui/accessible-controls)
- [Accessible descriptions](/documentation/swiftui/accessible-descriptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
