-- Version check script for TWA Loading Screen
local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

CreateThread(function()
    -- Vent et stykke tid efter resourcen starter
    Wait(5000)

    -- Tjek for opdateringer
    PerformHttpRequest('https://api.github.com/repos/TWA-Coding/twa-loading/releases/latest', function(statusCode, response, headers)
        if statusCode == 200 then
            local data = json.decode(response)
            if data.tag_name and data.tag_name ~= currentVersion then
                print('^3[UPDATE]^7 Ny version af TWA Loading Screen er tilgængelig: '..data.tag_name)
                print('^3[UPDATE]^7 Din nuværende version: '..currentVersion)
                print('^3[UPDATE]^7 Download her: '..data.html_url)
            else
                print('^2[VERSION]^7 TWA Loading Screen er up-to-date ('..currentVersion..')')
            end
        else
            print('^1[ERROR]^7 Kunne ikke tjekke for opdateringer. Statuskode: '..statusCode)
        end
    end, 'GET', '', {
        ['User-Agent'] = 'TWA-LoadingScreen-VersionCheck'
    })
end)