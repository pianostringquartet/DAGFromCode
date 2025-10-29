---
title: animate(changes:completion:)
description: Animates changes using the animation in the current transaction.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentablecontext/animate(changes:completion:)
timestamp: 2025-10-29T00:10:13.698Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewcontrollerrepresentablecontext](/documentation/swiftui/uiviewcontrollerrepresentablecontext)

**Instance Method**

# animate(changes:completion:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> Animates changes using the animation in the current transaction.

```swift
@MainActor @preconcurrency func animate(changes: () -> Void, completion: (() -> Void)? = nil)
```

## Parameters

**changes**

A closure that changes animatable properties.



**completion**

A closure to execute after the animation completes.



## Discussion

This combines doc://com.apple.documentation/documentation/UIKit/UIView/4429628-animate with the with the current transaction’s animation. When you start a SwiftUI animation using [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)) and have a mutated SwiftUI state that causes the representable object to update, use this method to animate changes in the representable object using the same `Animation` timing.

```swift
struct ContentView: View {
    @State private var isCollapsed = false
    var body: some View {
        ZStack {
            MyDetailView(isCollapsed: isCollapsed)
            MyRepresentable(isCollapsed: $isCollapsed)
            Button("Collapse Content") {
                withAnimation(.bouncy) {
                    isCollapsed = true
                }
            }
        }
    }
}

struct MyRepresentable: UIViewControllerRepresentable {
    @Binding var isCollapsed: Bool

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        if isCollapsed && !uiViewController.view.isCollapsed {
            context.animate {
                uiViewController.collapseSubview()
                uiView.layout()
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
