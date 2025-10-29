---
title: AccessibilityTraits
description: A set of accessibility traits that describe how an element behaves.
source: https://developer.apple.com/documentation/swiftui/accessibilitytraits
timestamp: 2025-10-29T00:10:05.158Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityTraits

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A set of accessibility traits that describe how an element behaves.

```swift
struct AccessibilityTraits
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting traits

- [allowsDirectInteraction](/documentation/swiftui/accessibilitytraits/allowsdirectinteraction) The accessibility element allows direct touch interaction for VoiceOver users.
- [causesPageTurn](/documentation/swiftui/accessibilitytraits/causespageturn) The accessibility element causes an automatic page turn when VoiceOver finishes reading the text within it.
- [isButton](/documentation/swiftui/accessibilitytraits/isbutton) The accessibility element is a button.
- [isHeader](/documentation/swiftui/accessibilitytraits/isheader) The accessibility element is a header that divides content into sections, like the title of a navigation bar.
- [isImage](/documentation/swiftui/accessibilitytraits/isimage) The accessibility element is an image.
- [isKeyboardKey](/documentation/swiftui/accessibilitytraits/iskeyboardkey) The accessibility element behaves as a keyboard key.
- [isLink](/documentation/swiftui/accessibilitytraits/islink) The accessibility element is a link.
- [isModal](/documentation/swiftui/accessibilitytraits/ismodal) The accessibility element is modal.
- [isSearchField](/documentation/swiftui/accessibilitytraits/issearchfield) The accessibility element is a search field.
- [isSelected](/documentation/swiftui/accessibilitytraits/isselected) The accessibility element is currently selected.
- [isStaticText](/documentation/swiftui/accessibilitytraits/isstatictext) The accessibility element is a static text that cannot be modified by the user.
- [isSummaryElement](/documentation/swiftui/accessibilitytraits/issummaryelement) The accessibility element provides summary information when the application starts.
- [isToggle](/documentation/swiftui/accessibilitytraits/istoggle) The accessibility element is a toggle.
- [playsSound](/documentation/swiftui/accessibilitytraits/playssound) The accessibility element plays its own sound when activated.
- [startsMediaSession](/documentation/swiftui/accessibilitytraits/startsmediasession) The accessibility element starts a media session when it is activated.
- [updatesFrequently](/documentation/swiftui/accessibilitytraits/updatesfrequently) The accessibility element frequently updates its label or value.

## Type Properties

- [isTabBar](/documentation/swiftui/accessibilitytraits/istabbar) The accessibility element is a tab bar.

## Assigning traits to content

- [accessibilityAddTraits(_:)](/documentation/swiftui/view/accessibilityaddtraits(_:))
- [accessibilityRemoveTraits(_:)](/documentation/swiftui/view/accessibilityremovetraits(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
