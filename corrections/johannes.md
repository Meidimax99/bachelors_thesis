Abstract:

...particularly in systems with growing memory demands and applications with poor spatial locality.
replace "grawing" with "high"

...alternative approaches like Inverted Page Tables are used
maybe replace "are used" with "can be used" if this is not common

...own set of problems ... suggest general performance problems
maybe say "own set of downsides" or "own downsides" to avoid repetition


1. Introduction:

...it now is the foundation for security, reliability, …
maybe "it is now" sounds better

...is degrading performance and increase power consumption
this should be "increasing"

Not only does this add a level of indirection ..., this penalty is even higher...
"not only" implies a bit that there's something along the lines of "but also".

...potentially accounting for up to 5% - 90%...
only "potentially accounting for 5% - 90%" or "potentially accounting for up yo 90%" might be more elegant

...page table lookups can get a lot more expense when following...
this should be "expensive"

Chapter 3 will show, that there are...
remove the comma

...shows that there is little agreement ... optimization approaches still relied on page table structures...
match tenses

...accesses required by a page table walk [TB14] and allowing them...
I find this sentence hard to parse


2. Fundamentals:

2.1
...completely unaware of of the real, physical memory...
remove second "of"

...It also hides all the other processes...
maybe say only "all the other processes"

...task of managing a programs memory...
use of-genitive (memory of a program) (or add apostrophe, though this technically isn't correct either)

...operating systems allowed running...
use present tense

2.1.1
...to reference memory object in its address space.
"objects" or "a memory object"

...in the programs own address space.
genitive again

Thus, it is possible programs to use the same virtual addresses, that point to different physical
addresses.
say "Thus, it is possible for programs to use the same virtual addresses, which point to different physical addresses" (adding "for" is necessary, "which" only sounds a bit nicer)

...actual addresses to memory locations...
maybe say "addresses of memory..."

...an addition layer of indirection...
maybe say "additional"

2.1.2
...number of requirements to the memory system...
maybe say " requirements for the memory..."

...bigger than the actual size of main memory, but...
maybe say "size of the main memory"

...desirable to i.g. allow the code segment...
should be "e.g." (example given)

..., that is the operating systems job.
genitive again

...possible to place the programs code and data anywhere in the programs virtual address space to make the programmers job as easy...
genitive x3 (s-genitive for "programmer" is correct, but apostrophe is missing), repetition could be removed by saying "its" in the second location

...increase the flexibility of the programs
switch to singular for consistency

...are summarized in the following.
"summarized next." or "in the following section."

2.1.3
...virtual addresses of each processes private...
genitive

...of how most commonly used memory implementation satisfy this requirement.
say "of how the most commonly... implementations satisfy..."

The naive approache is
should be "approach"

The point following the equation starts in a new line, which looks a bit odd.

With 64 bit computer, the requirements for...
should be "64 bit computers" or "a 64 bit computer"

2.1.3.1
However, its structure is less like a is less like a table and more...
remove repetition

...by the next part of the VPN.Depending...
add whitespace after dot

2.1.3.2
Superiority of one design of the other also appears to depend...
should be "one design or the other"

2.2.
Address Space Identifies With Address Space Identifiers (ASIDs), RISC-V provides...
Should be "Identifiers" in the heading as well

The paragraph doesn't really explain what ASIDs do compared to the TLB.

...should be flushed, given a ASID.
this should be "given an ASID."

...control over flushing of TLB entries, ...
maybe say "the flushing of..."

2.3.
Main differences are in the details of the implemented page table structure and in the way to software has to create the mappings.
maybe say "The main differences are ... the way the software..."

...hardware-based systems are design to service...
should be "designed to service".
Also, "required to service" might be more precise, since the point is that hardware-based systems can't be tailored to specific applications.

2.3.1
if MIPS is on-par with Ultrix and Guarded Page Tables, rather than an overarching term, its section should be formatted in the same way.

...innovative approach to handeling virtual memory.
should be "handling"

The approach is based...
simply say "It is based" to avoid repetition

2.4
On a TLB miss , with a hardware-managed TLB, ...
remove whitespace before comma

2.5.
...runs on a RISC-V platform. Therefore, it is necessary to go over some basic concepts of the RISC-V platform.
remove repetition

2.5.1
Each level of the page table contains 512 PTEs with 64-bit in size, ...
"with a 64 bit size" or ", "64 bit in size"
You previously wrote about 64 bit computers as "64 bit". The formatting with the dash should be consistent.

2.5.2
...because on one hand, the Qemu code handles exceptions..., and on the other hand, xv6, or
RISC-V in general, uses...
not sure if "on one hand, on the other hand" is the best choice since both statements are similar

Exception Vector The hart experiencing an exceptional state...
"hart" should probably be "part"

What the Hardware does Wenn eine Exception getriggert wird macht die Hardware folgendes:
language switch


3. Related Work

[Lie96] shows a innovative design leveraging the flexibility of softwaremanaged address translation. The design of Guarded Page Tables (GPTs) uses a design based on hierarchical page tables, but allows...
The repetition sounds a bit awkward

[JM97]explores software-managedaddress translation and analyses the...
missing whitespace

The specific translation cache designs of AMD and Intel platforms are examined and compared with three other designs proposed by the authors. Barr et al. conclude that radix page tables, by caching entries at higher page table levels, can outperform inverted page table designs.
This work focuses on optimizing the memory path by eliminating page tables and using a software-controlled TLB, and it does not further consider caches aside from the TLB.
Paragraph seems a bit out of place between the others

However, this work aims to avoid using page table structures altogether.
may be redundant at this point, especially given the final paragraph of 3.

Both approaches focus on optimizing access to page table structures and are separate from this work, as this work aims to eliminate these structures entirely.
same

[ZSM20] proposes an approach that shifts responsibilities of memory management in parts back to the applications: ...
should be "the responsibilities of..."

Every applications get a fixed-size chunks of physical memory and then have to manage allocations across these blocks.
should be "application gets... and then has to..." or "all Applications get fixed-size..."

It tries to get rid of the page table structure in favor of mapping functions.
probably redundant

These Morsels are self contained memory object, spanning...
should be "objects"


4. Theory

4.1.
...and defining the functions is also necessarry. The xv6 educational operating system...
should be "necessary"

4.2.
There is a x86 version and a RISC-V version.
should be "an x86 version"

4.3.
Operating system running on RISC-V hardware are not directly notified of TLB misses.
should be "operating systems"

If the TLB misses, a exception should be risen, providing context...
should be "an exception" and "raised"

The invokation of the hardware page table walker...
should be "invocation"

...it is important to chose a exception code from the code ranges...
should be "an exception"

4.4.
Throwing a exception...
should be "an exception"

...half of the puzzle.
Not sure if "puzzle" is appropriate

L4/MIPS TLB Exception Handling MIPS vectors its exception vectors...
add new line before heading

That gives the TLB miss handler 32 instructions to server the TLB Miss.
I'm unsure what "server" means here

Thus the memory footprint of handler is really low.
should be "of the handler" or "of this handler"

xv6’s exception handler does not actually handle most of the exceptions. For most of the exceptions...
repetition, and should be "most exceptions"

...create a situation in which we would have to deal with nested exception.
should be "nested exceptions" or " a nested exception"

4.5
4.5.1
...different instructions concerned with the invalidation, probing, flushing, reading
and writing (indexed and random).
...of what? (I assume the TLB, but it should be written out)

...are not strictly necesarry, except for flushing.
should be "necessary"

...physical mappings stemming from other processes.But the RISC-V privileged Architecture...
add whitespace after dot, should be "privileged", likely wrong capitalization of "privileged architecture"

Replacement Strategies A advantage of software-managed TLBs is, that the operating system can...
should be "An advantage", comma should be removed

The name of that register is missleading, because it is not actually...
should be "misleading"

Some TLB entries can be protecte from this ”random” replacement by setting...
should be "protected"

The contents of those registers directly correspont to the TLB entry, which...
should be "correspond"

4.5.2
The virtual address can not be easily shortened anymore.
maybe "further" sounds better than "anymore"

4.6
4.6.1
The first attempt at a stateless paging design uses a design that determines memory allocation at compile time.
maybe shorten to "The first attempt at a stateless paging design determines memory allocation at compile time." to avoid repetition

there may be a segement for the programs code, the data, ...
should be "segment", wrong genitive of "program"

...there is a segmenttable keeping track of...
missing whitespace

The main advantages of this memory design are, that the memory layout follows...
remove comma

...light-weight as possible, each segments has a fixed size, which is...
should be "segment" or "all segments have"

...less flexible but ommits the need of storing　the segment size for　each segment, as they are all the same size.
should be "omits", part about same size is redundant because of previous sentence

This approach also protect logical units (process address spaces)...
should be "protects"

Placement of memory pages at higher addresses than the maximum per-address space memory size do not work.
should be "does"

xv6 pins to special pages to the top end of a processes address space: ...
should be "two"

...and is thus also essential to be present for every process.
sounds a bit awkward

The calculation of physical addresses from physical ones is very straight forward.
should be "virtual" and "straightforward"

All that is required is the processes ASID and the offset into the address space.
genitive

...but since there is not page table to be used in the memory manager,...
should be "no page table"

Looking back at figure ?? shows that there is a ASID field...
missing reference

But the implementation may chose to use ... But with 16 bit, 2^16 = 65536 address spaces can be supported...
2^(16) is formatted the wrong way, maybe remove first "but"

This optimization is based on the assumption, that TLB misses...
remove comma


5. Implementation

The ordering of the sections in this chapter reflect the implementation process and will thus be comprised of following steps:
should be "reflects" and "the following steps"

Exception Handling and TLB Writing The second step implements the handling of the TLB Miss Exception, by implementing
maybe say "The second step is to implement"

5.1
There are two requisites the hardware needs to fulfil...
should be "prerequisites"

This speeds up the execution of the dynamically-translated code, as it
can directly lookup addresses in the TLB using a fast path [].
missing reference

5.1.1
Note that the physical memory allocator in kalloc.c will actually touch an this (or any address in the range from 0x80000000 to 0x88000000), when...
"an" should probably be "on", but I'm not entirely sure what this sentence means.

5.1.2
Adding a new exception to the QEMU emulator requires changes at a number of places.
Using a heading as start of a sentence is inconsistent with previous formatting

There is also a enum called RISCVException which contains...
should be "an enum"

In choosing a appropiate number for a new exception, ...
should be "an" and "appropriate"

...to delegate the exception to another privilege level by setting the appropiate bit...
should be "privilege" and "appropriate"

5.1.3
Adding a new user-level Program to xv6 only needs you to add a new .c file to the user subfolder and...
sentence starting as heading again

The final exception triggerer may look something like this:,The program first loads the hardcoded address into a register and then...
This makes no sense as it is, probably a figure got moved to the wrong location. Also remove capitalization and add whitespace after comma

...or do not have a exception handler implemented [CKM11].
should be "an exception"

5.2
Now that the new TLB Miss Exception can be triggered...
inconsistent style of "TLB Miss Exception" compared to previous paragraph

...will first go into a general description to add new CSRs to the RISC-V QEMU emulation...
should be "description of how to add"

5.2.1
Following code locations are relevant for...
should be "The following..."

Every emulated RISC-V hart has this structure...
"hart" should probably be "part" or something else

...extensions that the hart supports.
same

• Checking if the hart implements the CSR
same

• Combined read/write
• 128 bit read/writes
inconsistency between "write"/"writes"

...and the steps above, two new instructionscan be realized.
missing whitespace

5.2.2
The implementation of the tlbh CSR write, does not do anything else but saving the value...
remove comma

This is because the theory specifies, that the TLB entry will only be written...
same

5.2.3
It thus only needs to store two registers two memory to make enough room in the register file...
should be "to memory"

xv6 uses trap vectoring mechanism in direct mode.
should be "uses the trap vectoring..."

...jump to the address set in the mtvec BASE field but all interrupts are set the program counter to BASE plus four times the interrupt cause [Wat+24].
add comma before "but", remove "are"

Now any machine-mode exception (that is not delegated to a lower-privilege mode) sets the program counter...
should be "privilege"

The initial implementation simply calls the new tlbh and tlbl CSR instructions with and then returns.
with what?

5.3.1
...the call to the original riscv_cpu_tlb_fill function is not called anymore.
either say "the call ... is not present anymore" or "the  original ... is not called anymore"

5.4
And that even if we ignore the expensive context switch that needs to be...
should be "And that is even if..."

5.4.1
As with segmentation, the available physical memory is split into evenly sized portions, from now called address space.
should be "address spaces"

...iterate through the array to find a array slot with the value 0.
should be "an array slot"

THE address space ID (ASID) acquired by the process is also written to the processes control block (PCB).
remove capslock on "The"

...allow dynamic resizing of address spaces to provide space for more processors.
should probably be "processes"

The macros in listing ?? are used in different parts of the code...
missing reference

5.4.2
...according to the xv6 process memory model, be a address in the low end of the virtual memory space,...
should be "an address"

Listing ?? shows the implementation for the TLB Miss exception handler.
missing reference

5.4.3
xv6 needs a trampline page mapped into the address space of the process for system calls to work properly (see Chapter ).
missing reference

If a address in this page is encountered, the handler will map...
should be "an address"

5.4.4
...checks if the program size would increase to be bigger than the maximum program size and then return -1 if it is and the previous program break otherwise.
should be "returns", maybe split "otherwise" part into a separate sentence for clarity

5.5, 5.5.1, 5.5.2
in German.

5.5.3
QEMUs Redord/replay feature allows...
inconsistent capitalization between "record" and "replay"

...replay of a machines execution by recording all non-deterministic events that happend.
genitive of "machine", should be "happened"

With the Record/replay feature, it is easy to recreate...
capitalization

...interesting non-deterministic events that influence the execution of the system [.]
missing reference


6. Evaluation

The chapter will also discuss some shortcomings of the implementation and give some ideas on how to alleviate the problems.
First part of the sentence is redundant

6.1.3
Looking back at listing ?? it is apparent that there still are some memory references:...
missing reference

6.2
If this section is finished, its formatting is not consistent with the previous bullet point list in 5.2.1

6.3
The introductory sentence contradicts the 6. introductory paragraph, where you say the analysis is qualitative

...or allow processes to hold multiple ASIDs to allow processes to increase their memory over the statically determined maximum limit.
repetition sounds a bit awkward

...that could than assigned according to a programs memory demands.
should be "then", genitive

6.4
...that will result in a number of TLB misses and thus prompt the triggering of the TLB refill mechanism.
maybe simplify to "and thus trigger the TLB refill mechanism."

The execution time of that program can be measured and the run first with the QEMU-emulated MMU, the software page table walker in the TLB miss handler, and the mapping function. It would however be hard
"and the run first" should probably "and be run first", paragraph is incomplete

That is an unacceptable cost for a operation that is on the critical path...
should be "an operation"

The main difference being that the TLB miss handler in [Hei99] performs a page table walk and has thus access main memory.
should be "The main difference is that..." and "and thus has to access the main memory"

...is imperative to the compilers ability to optimize code.
genitive

6.5
The memory fencing effect of the instruction would also not change that way [Wat+24].
maybe say "would not change this either."


7. Conclusion
The result is a simple platform is a foundation to start experimenting with mapping functions...
should be "is a simple platform and foundation..."


References:

Missing short-hand for "A Deep Dive into QEMU: TCG Memory Accesses.
QEMU internals"

Short-hand "[16]" for "MIPS® Architecture For Programmers Volume II-A: The MIPS64® Instruction Set Reference Manual. 2016." is not very descriptive