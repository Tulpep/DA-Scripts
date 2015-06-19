function Check-Website($url)
{
    try
    {
        $finalurl = "http://isaccessible.azurewebsites.net/api/isaccessible?url=" + $url
        $result = Invoke-WebRequest -Uri $finalurl
        return $result
    }
    catch
    {
        return $false
    }
}