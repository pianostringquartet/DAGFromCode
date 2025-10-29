---
title: FindContext
description: The status of the find navigator for views which support text editing.
source: https://developer.apple.com/documentation/swiftui/findcontext
timestamp: 2025-10-29T00:15:23.258Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FindContext

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> The status of the find navigator for views which support text editing.

```swift
struct FindContext
```

## Overview

Views which support text editing can use this information to implement a a find navigator that is controlled using the modifiers used for controlling the find navigator throughout the rest of SwiftUI.

For example, the following shows a minimal find navigator implementation driven by the find context which falls back to local state if no `isPresented` binding is provided:

```swift
struct FindNavigatorDrivenTextInput: View {
    @State var text: String = ""
    @State var showFindNavigator = false
    @Environment(\.findContext) var findContext
    var body: some View {
        MyTextInputView(text: $text)
            .overlay(alignment: .topTrailing) {
                if let context = findContext &&
                    context.isPresented?.wrappedValue ?? showFindNavigator
                {
                    HStack {
                        FindInputView(text: text)
                        if context.allowedOperations == .findAndReplace {
                            ReplaceInputView(text: $text)
                        }
                        Button("Close") {
                            context.isPresented?.wrappedValue = false
                            showFindNavigator = false
                        }
                    }
                } else {
                    Button("Show Find Navigator") {
                        context.isPresented?.wrappedValue = true
                        showFindNavigator = true
                    }
                }
            }
    }
}
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Properties

- [isPresented](/documentation/swiftui/findcontext/ispresented) A binding controlling if the find navigator is presented, or nil if no binding has been provided via the  modifier.
- [supportsReplace](/documentation/swiftui/findcontext/supportsreplace) If the find navigators in this context should support replacing.

## Searching for text in a view

- [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:))
- [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:))
- [replaceDisabled(_:)](/documentation/swiftui/view/replacedisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
