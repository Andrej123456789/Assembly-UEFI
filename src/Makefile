all:
	@mkdir -p drive
	@fasm main.asm drive/pong
	@qemu-system-x86_64 -bios OVMF.fd -net none -drive format=raw,file=fat:rw:drive/
