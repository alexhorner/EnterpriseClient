-- Enterprise Monitor Mirror Driver

local nterm = term.native();

local monitor_names = peripheral.getNames("monitor");
local monitors = {};

for i = 1, #monitor_names do
    table.insert(monitors, peripheral.wrap(monitor_names[i]));
end

local function clear()
    nterm.clear();

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].clear();
        end
    end
end

local function setBackgroundColour(colour)
    nterm.setBackgroundColour(colour);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].setBackgroundColour(colour);
        end
    end
end

local function setTextColour(colour)
    nterm.setTextColour(colour);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].setTextColour(colour);
        end
    end
end

local function setCursorPos(x, y)
    nterm.setCursorPos(x, y);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].setCursorPos(x, y);
        end
    end
end

local function setCursorBlink(blink)
    nterm.setCursorBlink(blink);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].setCursorBlink(blink);
        end
    end
end

local function blit(text, textColour, backgroundColour)
    nterm.blit(text, textColour, backgroundColour);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].blit(text, textColour, backgroundColour);
        end
    end
end

local function write(text)
    nterm.write(text);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].write(text);
        end
    end
end

local function clearLine()
    nterm.clearLine();

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].clearLine();
        end
    end
end

local function getCursorPos()
    return nterm.getCursorPos();
end

local function isColour()
    return nterm.isColour();
end

local function getSize()
    return nterm.getSize();
end

local function scroll(lines)
    nterm.scroll(lines);

    if #monitors > 0 then
        for i = 1, #monitors do
            monitors[i].scroll(lines);
        end
    end
end

local function redirect(destination)
    return nterm.redirect(destination);
end

local function current()
    return nterm.current();
end

local function native()
    return nterm.native();
end

local function getTextColour()
    return nterm.getTextColour();
end

local function getBackgroundColour()
    return nterm.getBackgroundColour();
end


return {
    clear = clear,
    setBackgroundColour = setBackgroundColour,
    setBackgroundColor = setBackgroundColour,
    setTextColour = setTextColour,
    setTextColor = setTextColour,
    setCursorPos = setCursorPos,
    setCursorBlink = setCursorBlink,
    blit = blit,
    write = write,
    clearLine = clearLine,
    getCursorPos = getCursorPos,
    isColour = isColour,
    isColor = isColour,
    getSize = getSize,
    scroll = scroll,
    redirect = redirect,
    current = current,
    native = native,
    getTextColour = getTextColour,
    getTextColor = getTextColour,
    getBackgroundColour = getBackgroundColour,
    getBackgroundColor = getBackgroundColour
};