# Alternative Approaches for Virtual Memory Management
The title of this thesis is quite broad. More specific, this thesis aims to look into ways how Virtual Memory Systems can be realized without page table trees. The main motivation is the cost associated with traversing the page table tree and the inflexibility forced onto systems programmers by memory management hardware.

Thus, this thesis aims to implement an alternative Virtual Memory System, that is based on simple, software-defined mapping functions, instead of a costly page table walk. 

The thesis describes the modification of the [xv6](https://github.com/Meidimax99/xv6-riscv-softtlb) operating system and the [QEMU emulator](https://github.com/Meidimax99/qemu) to create a platform to test implementations of said mapping functions. The modifications in xv6 also include a first, simple implementation of such a mapping function that completely replaces the original, page-table-based Virtual Memory System and realizes a (limited) Virtual Memory System without page table structures and a page walking state machine.

