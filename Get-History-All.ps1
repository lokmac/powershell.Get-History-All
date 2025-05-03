################################################################################
# Returns the entire history of all PowerShell sessions in descending order of 
#   execution time. Similar to *nix "history" command but descending so easy to
#   use for "more" given no easy reverse command for PowerShell, but "more" not
#   bundled in the function to facilitate ability to search output.
#
# This is because Get-History and history in PowerShell only returns the history
#   of the current session.
#
# Author: Lachlan Macnish
# Date: 2025-05-03
# Version: 1.0.2
################################################################################

function Get-History-All {
	$content = Get-Content (Get-PSReadlineOption).HistorySavePath
	# Reverse the order - descending by execution time
	[array]::Reverse($content)
	$content
}

## "notepad $profile" and add this to the profile file for persistences