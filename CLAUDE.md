# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build and Test Commands

- Build the project: `xcodebuild -scheme DAGFromCode build`
- Run tests: `xcodebuild -scheme DAGFromCode test`
- Run a specific test: `xcodebuild -scheme DAGFromCode test -only-testing:DAGFromCodeTests/[TestClass]/[testMethod]`
- Clean build: `xcodebuild -scheme DAGFromCode clean`

## Project Architecture

This is a SwiftUI application exploring directed acyclic graph (DAG) representations of code structure. The key architectural components are:

### Core Data Model
- **DAGNode**: Represents nodes in the graph with inputs, outputs, and processing functions
- **Coordinates**: Uses `InputCoordinate` and `OutputCoordinate` structs to uniquely identify node ports
- **InputValue**: Enum that allows inputs to be either static values or edges from upstream nodes
- **DAGPatch**: Enum defining node types (value, sin, cos, sqrt) - mathematical operations that transform inputs to outputs

### Dependencies
- **SwiftSyntax** (v602.0.0): Used for parsing and analyzing Swift code structure
- **SwiftParser**: Works with SwiftSyntax to parse Swift source code into syntax trees

### Testing Framework
Uses Apple's new Swift Testing framework (not XCTest) with `@Test` macro annotations.