$ErrorActionPreference = "Stop"

$projectFile = "blood-donation-system/index.html"

Write-Host "Running Blood Donation Management System tests..."

if (-not (Test-Path $projectFile)) {
    throw "FAIL: index.html does not exist"
}
Write-Host "PASS: index.html exists"

$content = Get-Content $projectFile -Raw

if ($content -notmatch "(?i)<!DOCTYPE html>") {
    throw "FAIL: DOCTYPE is missing"
}

if ($content -notmatch "(?i)<html") {
    throw "FAIL: HTML tag is missing"
}

if ($content -notmatch "(?i)</html>") {
    throw "FAIL: closing HTML tag is missing"
}

Write-Host "PASS: HTML document structure is valid"

if ($content -notmatch "(?i)<title>Blood Donation Management System") {
    throw "FAIL: Page title is missing"
}

Write-Host "PASS: Page title exists"

if ($content -notmatch "(?i)Donate Blood, Save Lives") {
    throw "FAIL: Main heading is missing"
}

Write-Host "PASS: Main heading exists"

if ($content -notmatch "(?i)Become a Donor") {
    throw "FAIL: Donor button is missing"
}

Write-Host "PASS: Donor button exists"

if ($content -notmatch '(?i)aria-label="Become a blood donor"') {
    throw "FAIL: Donor button accessibility label is missing"
}

Write-Host "PASS: Donor button has an accessibility label"

Write-Host "All Blood Donation Management System tests passed."
