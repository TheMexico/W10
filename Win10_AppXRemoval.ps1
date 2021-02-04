    # Reference blog. Thanks to this post for a quick layman write up.
# https://www.pdq.com/blog/removing-windows-10-apps-and-advertising/


    # Run this to get Provisioned apps "cached packages to setup for users from"
    # Removing this will prevent the app from "provisioning" itself for the user on 1st time login
# Get-AppxProvisionedPackage -Online | Select DisplayName, PackageName

<#
    # Create default list for 1909 here .... need media?
#>

<# 
    #Default output of Win10 20H2
Microsoft.549981C3F5F10
Microsoft.BingWeather
Microsoft.DesktopAppInstaller
Microsoft.GetHelp
Microsoft.Getstarted
Microsoft.HEIFImageExtension
Microsoft.Microsoft3DViewer
Microsoft.MicrosoftEdge.Stable
Microsoft.MicrosoftOfficeHub
Microsoft.MicrosoftSolitaireCollection
Microsoft.MicrosoftStickyNotes
Microsoft.MixedReality.Portal
Microsoft.MSPaint
Microsoft.Office.OneNote
Microsoft.People
Microsoft.ScreenSketch
Microsoft.SkypeApp
Microsoft.StorePurchaseApp
Microsoft.VCLibs.140.00
Microsoft.VP9VideoExtensions
Microsoft.Wallet
Microsoft.WebMediaExtensions
Microsoft.WebpImageExtension
Microsoft.Windows.Photos
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsFeedbackHub
Microsoft.WindowsMaps
Microsoft.WindowsSoundRecorder
Microsoft.WindowsStore
Microsoft.Xbox.TCUI
Microsoft.XboxApp
Microsoft.XboxGameOverlay
Microsoft.XboxGamingOverlay
Microsoft.XboxIdentityProvider
Microsoft.XboxSpeechToTextOverlay
Microsoft.YourPhone
Microsoft.ZuneMusic
Microsoft.ZuneVideo
#>

    # code time
    # removal list here
    # [ ] To do - Generate 1909 list, line 7
$appList = @(
    "example1",
    "example2",
    "example3",
    "example4"
)
    # Run the removal
foreach ($app in $appList) {
    Remove-AppxProvisionedPackage -AllUsers -Online -ErrorAction SilentlyContinue 
}
