orgasm-jit - generate, assemble, run.
=====================================
Because this is what I wanted to end up with anyway.

This is what I want it to end up looking like.

```ruby
>> require 'orgasm/jit'
true
>> f = Orgasm::JIT::Function.new([], :int, Orgasm::Architecture.x86.i686.generator.do {
	push ebp
	mov  ebp, esp

	mov eax, 1337

	mov esp, ebp
	pop ebp
	ret
}.assemble)
>> f.call
1337
```
