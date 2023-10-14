#Powershell script to collect computer info and write it in a file.

#Location to store the extracted data info.

$folder_path = "~\Desktop\Extracted_Data"

mkdir $folder_path


#items to extract
$item_list = "Win32_Processor",
"Win32_Desktop",
"Win32_LoggedOnUser",
"Win32_Directory",
"Win32_NetworkClient",
"Win32_Environment",
"Win32_SystemDriver",
"Win32_UserAccount",
"Win32_Group",
"Win32_SystemAccount",
"Win32_BaseService",
"Win32_NetworkConnection",
"Win32_ComputerSystem", 
"Win32_BIOS",
"Win32_DiskPartition",                     
"Win32_OperatingSystem",
"Win32_LogicalDisk",
"Win32_MemoryDevice",  
"Win32_DiskDrive"

 
foreach ($item in $item_list)
{
    $path = $folder_path + "/" + $item + ".txt"
    $cmd_extract = Get-WmiObject -Class $item | Add-Content $path
}

