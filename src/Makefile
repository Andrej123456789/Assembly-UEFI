OVMFDIR = ../OVMFbin

all: compile buildimg run

compile:
	@mkdir -p drive
	@fasm main.asm drive/template

buildimg:
	dd if=/dev/zero of=gv.img bs=512 count=93750
	mformat -i gv.img -F ::
	mcopy -i gv.img startup.nsh ::
	mcopy -i gv.img drive/template ::

run:
	@echo " "
	@echo "Sorry that the Qemu window is fullscreen by default!"
	@echo " "
	qemu-system-x86_64 -drive file=gv.img -m 256M -cpu qemu64 -drive if=pflash,format=raw,unit=0,file="$(OVMFDIR)/OVMF_CODE-pure-efi.fd",readonly=on -drive if=pflash,format=raw,unit=1,file="$(OVMFDIR)/OVMF_VARS-pure-efi.fd" -net none
