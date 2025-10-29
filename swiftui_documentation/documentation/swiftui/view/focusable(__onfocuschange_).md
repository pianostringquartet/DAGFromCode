---
title: focusable(_:onFocusChange:)
description: Specifies if the view is focusable and, if so, adds an action to perform when the view comes into focus.
source: https://developer.apple.com/documentation/swiftui/view/focusable(_:onfocuschange:)
timestamp: 2025-10-29T00:14:49.935Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusable(_:onFocusChange:)

**Available on:** macOS 10.15+, tvOS 13.0+, watchOS 6.0+

> Specifies if the view is focusable and, if so, adds an action to perform when the view comes into focus.

```swift
nonisolated func focusable(_ isFocusable: Bool = true, onFocusChange: @escaping (Bool) -> Void = { _ in }) -> some View
```

## Parameters

**isFocusable**

A Boolean value that indicates whether this view is focusable.



**onFocusChange**

A closure that’s called whenever this view either gains or loses focus. The Boolean parameter to `onFocusChange` is `true` when the view is in focus; otherwise, it’s `false`.



## Return Value

A view that sets whether a view is focusable, and triggers `onFocusChange` when the view gains or loses focus.

## Input and events modifiers

- [onChange(of:perform:)](/documentation/swiftui/view/onchange(of:perform:))
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:)-36x9h)
- [onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:pressing:perform:))
- [onLongPressGesture(minimumDuration:pressing:perform:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:pressing:perform:))
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:)-4f78f)
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:)-964k1)
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:)-2vr9o)
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:)-8gyrl)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
