
function GET_JOINING_SESSION(src)

    for k, SESSION in pairs(GAME_SESSION) do
        if SESSION.PLAYERS[1].src == src then
            return k, 1
        elseif SESSION.PLAYERS[2].src == src then
            return k, 2
        end
    end

    return nil, nil
end

function ALL_PLAYER_STATUS_IS(session, status)
    if (session.PLAYERS[1] ~= nil and session.PLAYERS[1].status == status) and (session.PLAYERS[2] ~= nil and session.PLAYERS[2].status == status) then
        return true
    end

    return false
end

function GET_WINNER(SESSION)
    print(SESSION.PLAYERS[1].score, SESSION.PLAYERS[2].score)
    return tonumber(SESSION.PLAYERS[1].score) < tonumber(SESSION.PLAYERS[2].score) and 1 or 2
end