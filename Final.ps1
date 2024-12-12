
function Describe-Myself {
    param (
        [string]$Topic
    )

    if ($Topic -eq "family") {
        Write-Output "I have a wonderful family who supports me in everything I do."
    }
    elseif ($Topic -eq "hobbies") {
        Write-Output "I enjoy various hobbies, including soccer, hiking, and playing games."
    }
    elseif ($Topic -eq "schooling") {
        Write-Output "I've had an amazing time learning scripting, new things and growing my knowledge."
    }
    elseif ($Topic -eq "passions") {
        Write-Output "My passions include technology, helping others, and continuous learning."
    }
    else {
        Write-Output "I can talk about my family, hobbies, schooling, or passions. Please specify one of these topics."
    }
}

# Prompt user for input
$topics = @("family", "hobbies", "schooling", "passions")
foreach ($topic in $topics) {
    $response = Read-Host "Would you like to know about my life? (yes/no)"
    if ($response -eq "yes") {
        Describe-Myself -Topic $topic
    }
}
