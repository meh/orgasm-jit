orgasm-jit - generate, assemble, run.
=====================================
Because this is what I wanted to end up with anyway.

This is what I want it to end up looking like.

```ruby
>> require 'orgasm/jit'
true
>> # The following call uses Intel 64 bit opcode, so you need to be running a 64 bit machine
>> Orgasm::JIT::Function.new(:int, [], "\x55\x48\x8b\xec\x48\xc7\xc0\x00\x04\x00\x00\x48\x8b\xe5\x5d\xc3").call
1024
>> # The following call uses Intel 32 bit opcode, if you're on a 64 bit system it will probably segfault
>> Orgasm::JIT::Function.new([], :int, Orgasm::Architecture.x86.i686.generator.do {
	push ebp
	mov  ebp, esp

	mov eax, 1024

	mov esp, ebp
	pop ebp
	ret
}.assemble).call
1024
```
