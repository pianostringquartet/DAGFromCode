---
title: projectedValue
description: A binding to the request’s mutable configuration properties.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/projectedvalue
timestamp: 2025-10-29T00:11:47.021Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest)

**Instance Property**

# projectedValue

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A binding to the request’s mutable configuration properties.

```swift
@MainActor @preconcurrency var projectedValue: Binding<SectionedFetchRequest<SectionIdentifier, Result>.Configuration> { get }
```

## Discussion

This property behaves like the [projected Value](/documentation/swiftui/fetchrequest/projectedvalue) of a [Fetch Request](/documentation/swiftui/fetchrequest). In particular, SwiftUI returns the value associated with this property when you use [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) as a property wrapper on a [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance and then access the results with a dollar sign (`$`) prefix. The value that SwiftUI returns is a [Binding](/documentation/swiftui/binding) to the request’s [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration) structure, which dynamically configures the request.

## Configuring a request dynamically

- [SectionedFetchRequest.Configuration](/documentation/swiftui/sectionedfetchrequest/configuration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
