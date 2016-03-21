# 101-dsc-windowsoms
DSC Configuration that on-boards a new VM to OMS Log Analytics

This configuration requires 2 module:
  - [cMMAgent](http://www.powershellgallery.com/packages/cMMAgent/1.2) Version 1.3
  - [xPSDesiredStateConfiguration](http://www.powershellgallery.com/packages/xPSDesiredStateConfiguration/3.8.0.0) Version 3.8.0.0
  
This configuration accepts 2 parameters:
  - **Workspace ID** is the unique identifier for an OMS Log Analytics subscription
  - **Workspace Key** is a unique string that allows agents to write logs to OMS log analytics.  This should be considered a secret. 
  
Releases:
  - **1.0** Minimum viable product.  No known issues.   