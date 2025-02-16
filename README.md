# Objective-C KVO Memory Management Bug

This repository demonstrates a common yet subtle bug in Objective-C related to Key-Value Observing (KVO) and memory management.  The issue stems from forgetting to remove KVO observers when the observed object is deallocated, leading to potential crashes or undefined behavior.

## Bug Description

The `bug.m` file contains code that adds a KVO observer but neglects to remove it before the observed object is deallocated.  This can result in a crash when the observer attempts to access the deallocated object.

## Solution

The `bugSolution.m` file presents a corrected version of the code.  It includes proper removal of the observer using `removeObserver:forKeyPath:` in the `dealloc` method or before the object is no longer needed.  This ensures that the observer doesn't attempt to access deallocated memory.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the original `bug.m` code (expect a crash). 
4. Run the corrected `bugSolution.m` code (no crash).

This example highlights the critical importance of diligent memory management in Objective-C, particularly when using powerful features like KVO.