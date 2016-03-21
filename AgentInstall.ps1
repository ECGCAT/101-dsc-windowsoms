Configuration AgentInstall {
# Version 1.0
param(
[parameter(Mandatory = $true)]
[string]$workspaceID,
[parameter(Mandatory = $true)]
[string]$workspaceKey
)
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xPSDesiredStateConfiguration' - Version '3.8.0.0'
    Import-DscResource -ModuleName 'cMMAgent' -ModuleVersion '1.2'
    node localhost {
        xRemoteFile OMSAgent {
            DestinationPath =    'c:\temp\OMS\MMASetup-AMD64.exe'
            Uri =                'http://go.microsoft.com/fwlink/?LinkID=517476'
            MatchSource =        $False
        }
        cMMAgentInstall OMSAgent {
            Path =               'c:\temp\OMS\MMASetup-AMD64.exe'
            Ensure =             'Present'
            WorkspaceID =        $workspaceID
            WorkspaceKey =       $workspaceKey
        }
    }
}