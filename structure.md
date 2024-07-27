# Introduction 2-3 Seiten
- Problemstellung
- Ziele / Forschungsfrage
- Inhaltliche Abgrenzung, Ausschließen von Teilproblemen
- Aufbau der Arbeit
- Relevanz
- !Keine Ergebnisse
- !Keine Definitionen
- !Keine Historische Einordnung
- Einführende Zitate oder Geschichten -> Atlas , Overlays



# Hauptteil

## Fundamentals
- What is virtual memory?
    - Definitions
        - Lehrbücher -> Compare different definitions and pick one most usefull for my cause
    - What does it do?
    - Why do we want it?
    - How does it work?
        - Different Implementations

- How is Virtual Memory realized/implemented?
    - In what aspects may implementation differ
        - Hardware-Software TLB Refill
    - Typical VM System Implementations
        - Inverted
        - Hierachical
        - Multi Level
    - Why are there different implementations?
        - Differences/ tradeoffs / Pros and Cons
    - Important tradeoff - Memory / Time Tradeoff

- How can the access time be reduced?
    - Hardware Support
        - TLB
        - MMU
        - Processor essentially freezes
    - Paging Structures
        - Filled by operating system
        - Parsed by MMU on TLB Miss
    - Fundamental: How HW and SW work together for virtual memory
    - Fixed structures -> Fixed VM System on a given system
        - Very inflexible
        - Different use cases that may not want to use a MMU
    - Why not do the TLB Filling in software for more flexibility

## Related Work
- Software Based VM Approaches
    - Rationale
    - Possible Tradeoffs?
    - Related work [ A look at several ...]

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