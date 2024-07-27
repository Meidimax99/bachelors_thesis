# High Level Structure

# Introduction 2-3 Seiten


# Hauptteil

## Related Work
- Software Based VM Approaches

- Difference to my approach
## Fundamentals
- Virtual Memory Basics

- Different VM Implementations

- HW Support for VM


## Theory / Idea (in Detail)
    - Not just a SW-Pagetable walk
        - HW is faster (even thought cpu freezes in HW VM?)
        - Context switch would be very expensive [ Paper on cost of context switch? ]
    - -> Simple unidirectional function for va -> pa mapping
        - Function design
            - Operators ...
            - Complexity
    - Supported Use cases
        - Minimal Use case
        - Complexer Use cases

- Realization Theory -> How can this be realized?
    - Not using an MMU
    - Filling the tlb in sw
    - allocating pages
    - mapping pages
    - -> Feature extrapolation

- Plaform Selection Theory ?
## Implementation

    - Suitable Platforms, Chosen Platform
        - Required features
        - Comparison with other Platforms
    - Implementation Description

## Evaluation

- Evaluation
    - Relevant Metrics
    - Critical assesment
    - Possible niche

# End
- Conclusion (zusammenfassung der Kernaspekte)
- Future Work
    - Missing Features, what more to implement, ideas how to implement it