param(
    [string]$url = "https://tparnpuu.webhosting.tptlive.ee/skriptitav/wp-json/wp/v2/posts/",
    [string]$username = "",
    [string]$password = "",
    [string]$inputFile
)

if (-not (Test-Path $inputFile)) {
    Write-Error "Sisendfaili $inputFile ei leitud!"
    exit 1
}

$posts = Import-Csv -Path $inputFile -Delimiter ";" -Encoding UTF8

foreach ($post in $posts) {
    $data = @{
        title = $post.pealkiri
        content = $post.sisu
        status = "publish"
    } | ConvertTo-Json

    $headers = @{
        "Content-Type" = "application/json"
    }

    $response = Invoke-RestMethod -Uri $url -Method Post -Headers $headers -Body $data -Credential (New-Object System.Management.Automation.PSCredential -ArgumentList ($username, ($password | ConvertTo-SecureString -AsPlainText -Force)))

    Write-Host "Tulemus: $($response.status_code) $($response.json())"
}
