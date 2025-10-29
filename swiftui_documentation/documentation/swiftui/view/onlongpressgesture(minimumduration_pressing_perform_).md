---
title: onLongPressGesture(minimumDuration:pressing:perform:)
description: Adds an action to perform when this view recognizes a long press gesture.
source: https://developer.apple.com/documentation/swiftui/view/onlongpressgesture(minimumduration:pressing:perform:)
timestamp: 2025-10-29T00:09:51.570Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onLongPressGesture(minimumDuration:pressing:perform:)

**Available on:** tvOS 14.0+

> Adds an action to perform when this view recognizes a long press gesture.

```swift
nonisolated func onLongPressGesture(minimumDuration: Double = 0.5, pressing: ((Bool) -> Void)? = nil, perform action: @escaping () -> Void) -> some View
```

## Input and events modifiers

- [onChange(of:perform:)](/documentation/swiftui/view/onchange(of:perform:))
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:)-36x9h)
- [onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:pressing:perform:))
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:)-4f78f)
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:)-964k1)
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:)-2vr9o)
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [focusable(_:onFocusChange:)](/documentation/swiftui/view/focusable(_:onfocuschange:))
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:)-8gyrl)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
