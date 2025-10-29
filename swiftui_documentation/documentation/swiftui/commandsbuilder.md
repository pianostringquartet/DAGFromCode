---
title: CommandsBuilder
description: Constructs command sets from multi-expression closures. Like , it supports up to ten expressions in the closure body.
source: https://developer.apple.com/documentation/swiftui/commandsbuilder
timestamp: 2025-10-29T00:09:32.069Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CommandsBuilder

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Constructs command sets from multi-expression closures. Like , it supports up to ten expressions in the closure body.

```swift
@resultBuilder struct CommandsBuilder
```

## Building content

- [buildBlock()](/documentation/swiftui/commandsbuilder/buildblock()) Builds an empty command set from a block containing no statements.
- [buildBlock(_:)](/documentation/swiftui/commandsbuilder/buildblock(_:)) Passes a single command group written as a child group through modified.
- [buildBlock(_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:))
- [buildBlock(_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:))
- [buildBlock(_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:))
- [buildBlock(_:_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/commandsbuilder/buildblock(_:_:_:_:_:_:_:_:_:_:))

## Building conditionally

- [buildEither(first:)](/documentation/swiftui/commandsbuilder/buildeither(first:)) Produces content for a conditional statement in a multi-statement closure when the condition is true.
- [buildEither(second:)](/documentation/swiftui/commandsbuilder/buildeither(second:)) Produces content for a conditional statement in a multi-statement closure when the condition is false.
- [buildIf(_:)](/documentation/swiftui/commandsbuilder/buildif(_:)) Produces an optional widget for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.
- [buildLimitedAvailability(_:)](/documentation/swiftui/commandsbuilder/buildlimitedavailability(_:)) Processes commands for a conditional compiler-control statement that performs an availability check.
- [buildExpression(_:)](/documentation/swiftui/commandsbuilder/buildexpression(_:)) Builds an expression within the builder.

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [Commands](/documentation/swiftui/commands)
- [CommandMenu](/documentation/swiftui/commandmenu)
- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
