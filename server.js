const request = require('request')
const token = ''
const Guildid = ''

exports('UpdateNickname', (name, discordid) => {
    request({
        method: 'PATCH',
        url: `https://discordapp.com/api/guilds/${Guildid}/members/${discordid}`,
        headers: {
            'Authorization': `Bot ${token}`
        },
        json: {
            nick: name
        }
    }, (error, response, body) => {
        if (error) {
            console.log(error)
        }
    })
})