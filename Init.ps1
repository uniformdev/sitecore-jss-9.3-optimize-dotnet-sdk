param(
    [ValidateNotNullOrEmpty()]
    [string]
    [Parameter(Mandatory=$true)]
    $UniformNugetToken 
    )

    [Environment]::SetEnvironmentVariable("UNIFORM_NUGET_ACCESS_TOKEN", $UniformNugetToken, [System.EnvironmentVariableTarget]::User)