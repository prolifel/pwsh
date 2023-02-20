function mati {
    param (
        [parameter(position = 0, mandatory = $false)]
        [string]
        $type,

        [parameter(position = 1, mandatory = $false)]
        [int]
        $duration
    )

    if ($type -eq "") {
        $type = "-s"
    }
    else {
        $type = "-" + $type
    }
    shutdown $type -t $duration
}

Export-ModuleMember -Function mati