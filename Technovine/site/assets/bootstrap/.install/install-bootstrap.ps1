<# 
★ Bootstrap Installation script for Windows-Based machines
    !! This script is pre-configured for a specific project template
        - If you would like to use it for your own project, make sure you re-define the environment variables at the top of the script.
#>

#================================================================


#★ Script Execution Policy

function Set-ScriptPolicy {
    [CmdletBinding()]    
    param(
        [Parameter(Mandatory=$false,
                   ParameterSetName="policies")]
        [Alias("B")]
        [switch]$Bypass
    )


    #- Define Execution Policy variables for conditional statements
        # Declare empty 'ExecutionPolicy' variable
        New-Variable -Scope Global -Visibility Public -Verbose -PassThru -Description "Initially declared without a value. This variable is meant to be defined with the local machine's current execution policy for use in logical 'if-else' statements." -Name 'ExecutionPolicy'
        
        Get-ExecutionPolicy -OutVariable 'EPolicy' | Set-Variable -Name 'ExecutionPolicy' -Value $EPolicy


    if ("$ExecutionPolicy" -eq "Unrestricted") {
        Continue
    } else {
        Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope 'Process' -Force -Verbose -Confirm:$false -ErrorAction Suspend -ErrorVariable +'PrepErrorVar' -WarningAction Inquire -WarningVariable +'PrepWarningVar'
    }


}


