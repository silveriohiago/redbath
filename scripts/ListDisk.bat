@Echo off

echo Listando discos...
echo -------------------
::call diskpart /s formatLinux.bat

::list disk
::select disk 0  
::clean  
::create partition primary
::select partition 1
::active
::format fs=fat32
::assign
::exit 1
wmic logicaldisk get name, filesystem, description, freespace, size
pause