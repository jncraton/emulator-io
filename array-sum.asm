; Load size into r0
LoadDirect r0, 101
; Load scalar operand into r1
LoadDirect r1, 100

; Create pointer to current element
LoadImmediate r2, 102

; Create loop counter as max pointer value
Add r0, r2

; Load current element
LoadIndirect r3, r2
; Add
Add r3, r1
; Store
StoreIndirect r2, r3

BranchOnEqual r2, r0, 20
; Increment pointer to next element
AddImmediate r2, r2, 1
Jump 4
Halt