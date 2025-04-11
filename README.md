# FindBinaryArchitecture
Powershell script to find the architecture of Windows binaries in a folder (and subfolders).

If you don't have Visual Studio 2022 (14.44.34918) installed you will need to alter the `$DumpbinPath` in `Architecture.ps1`

Example usage:
```
PS C:\Users\[Username]\Downloads> ./Architecture.ps1 -RootDirectory "C:\Dell"
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN7\32\RTNicProp32.dll:
             14C machine (x86)                    32 bit word machine
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN7\64\RTNicProp64.dll:
            8664 machine (x64)
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN7\WinPE\32\RTNicProp32.dll:
             14C machine (x86)                    32 bit word machine
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN7\WinPE\64\RTNicProp64.dll:
            8664 machine (x64)
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN8\32\RTNicProp32.dll:
             14C machine (x86)                    32 bit word machine
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN8\64\RTNicProp64.dll:
            8664 machine (x64)
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN8\WinPE\32\RTNicProp32.dll:
             14C machine (x86)                    32 bit word machine
File Version: 1.2.0.8
Product Version: 1.2.0.8
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\WIN8\WinPE\64\RTNicProp64.dll:
            8664 machine (x64)
File Version: 1.2.0.8
Product Version: 1.2.0.8
No machine information found for C:\Dell\Dock NIC Driver\Legacy\Windows\ISSetup.dll
File Version: 21.0.0.338
Product Version: 21.0.338
Result for C:\Dell\Dock NIC Driver\Legacy\Windows\setup.exe:
             14C machine (x86)                    32 bit word machine
File Version: 1.0.5.0
Product Version: 1.00.0005
Result for C:\Dell\Dock NIC Driver\Legacy\RTNIC_DELL_INST.exe:
             14C machine (x86)                    32 bit word machine
File Version: 2.0.0.5
Product Version: 2.0.0.5
Result for C:\Dell\Dock NIC Driver\RTNIC_DELL_INST.exe:
             14C machine (x86)                    32 bit word machine
File Version: 1.0.0.4
Product Version: 1.0.0.4
```
