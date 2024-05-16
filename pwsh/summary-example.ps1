$Array = @(
	[PSCustomObject]@{
		Name       = 'Workflow-1'
		Conclusion = 'Success'
	}
	[PSCustomObject]@{
		Name       = 'Workflow-2'
		Conclusion = 'Failure'
	}
	[PSCustomObject]@{
		Name       = 'Workflow-3'
		Conclusion = 'Success'
	}
	[PSCustomObject]@{
		Name       = 'Workflow-4'
		Conclusion = 'Cancelled'
	}
)

$Output = @()
$Output += '| Name | Conclusion |'
$Output += '| :-- | :-: |'
foreach ($Item in $Array) {
	$Output += "| $($Item.Name) | $($Item.Conclusion) |"
}

Write-Output $Output >> $env:GITHUB_STEP_SUMMARY
