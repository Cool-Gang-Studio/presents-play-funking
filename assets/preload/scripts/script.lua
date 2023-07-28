--script made by codding



function goodNoteHit(id, direction, noteType, isSustainNote)
if direction == 0 then
if isSustainNote == false then
setPropertyFromGroup('playerStrums', 0, 'y', defaultOpponentStrumY0 - 20)
noteTweenY(math.random(1,1000), 4, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
if direction == 1 then
if isSustainNote == false then
setPropertyFromGroup('playerStrums', 1, 'y', defaultOpponentStrumY1 - 20)
noteTweenY(math.random(1,1000), 5, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
if direction == 2 then
if isSustainNote == false then
setPropertyFromGroup('playerStrums', 2, 'y', defaultOpponentStrumY2 - 20)
noteTweenY(math.random(1,1000), 6, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
if direction == 3 then
if isSustainNote == false then
setPropertyFromGroup('playerStrums', 3, 'y', defaultOpponentStrumY3 - 20)
noteTweenY(math.random(1,1000), 7, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if direction == 0 then
if isSustainNote == false then
setPropertyFromGroup('opponentStrums', 0, 'y', defaultOpponentStrumY0 - 20)
noteTweenY(math.random(1,1000), 0, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
if direction == 1 then
if isSustainNote == false then
setPropertyFromGroup('opponentStrums', 1, 'y', defaultOpponentStrumY1 - 20)
noteTweenY(math.random(1,1000), 1, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
if direction == 2 then
if isSustainNote == false then
setPropertyFromGroup('opponentStrums', 2, 'y', defaultOpponentStrumY2 - 20)
noteTweenY(math.random(1,1000), 2, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
if direction == 3 then
if isSustainNote == false then
setPropertyFromGroup('opponentStrums', 3, 'y', defaultOpponentStrumY3 - 20)
noteTweenY(math.random(1,1000), 3, defaultOpponentStrumY0, 0.3, 'circOut')
end
end
end