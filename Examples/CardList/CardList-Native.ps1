﻿Import-Module $PSScriptRoot\..\PSTeams.psd1 -Force

New-CardList {
    New-CardListItem -Type file -Title 'Report' -SubTitle 'teams > new > design' -TapType openUrl -TapValue "https://contoso.sharepoint.com/teams/new/Shared%20Documents/Report.xlsx" -TapAction editOnline
    New-CardListItem -Type resultItem -Title 'Trello title' -SubTitle 'A Trello subtitle' -TapType openUrl -TapValue "http://trello.com" -Icon "https://cdn2.iconfinder.com/data/icons/social-icons-33/128/Trello-128.png"
    New-CardListItem -Type section -Title 'Manager'
    New-CardListItem -Type person -Title "John Doe" -SubTitle 'Manager' -TapType imBack -TapValue "JohnDoe@contoso.com" -TapAction whois
    New-CardListButton -Type openUrl -Title 'Show' -Value 'https://evotec.xyz'
} -Uri $Env:TEAMSPESTERID -Title 'Card Title'