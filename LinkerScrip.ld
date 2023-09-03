


_estack = ORIGIN(RAM) + LENGTH(RAM);

MEMORY
{
	RAM (xrw) : ORIGIN = 0x20000000, LENGTH = 20K 

	FLASH (wr) : ORIGIN = 0x08000000, LENGTH = 64K 
}

SECTIONS
{
	.isr_vector :
	{
		. = ALIGN(4);
		*(.isr_vector)
		 
		. = ALIGN(4);
		 

	}>FLASH	
	
	.text :
	{
		. = ALIGN(4);
		*(.text)
		*(.text*)
		. = ALIGN(4);
		_etext = .;

	}>FLASH



	.rodar :
	{
	    . = ALIGN(4);
		*(.rodata)
		*(.rodata*)
		. = ALIGN(4);
		_erodata = .;
		
	}>FLASH

	
	_sidata = LOADADDR(.data);
	.data :
	{
		_sdata = .;
		. = ALIGN(4);
		*(.data)
		*(.data*)
		. = ALIGN(4);
		_edata = .;
	}>RAM AT>FLASH



	.bss :
	{
		_sbss = .;
	    . = ALIGN(4);
		*(.bss)
		*(.bss*)
		. = ALIGN(4);
		_ebss = .;
	}>RAM

}