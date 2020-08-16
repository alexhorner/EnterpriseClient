-- Enterprise Display Driver

local nterm = term.native();
local enterdisplays = {};

local function bind(enterdisplay)
    table.insert(enterdisplays, enterdisplay);

    return #enterdisplays;
end

local function unbind(index)
    table.remove(enterdisplays, index);
end

local function clear()
    nterm.clear();

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].clear();
        end
    end
end

local function setBackgroundColour(colour)
    nterm.setBackgroundColour(colour);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].setBackgroundColour(colour);
        end
    end
end

local function setTextColour(colour)
    nterm.setTextColour(colour);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].setTextColour(colour);
        end
    end
end

local function setCursorPos(x, y)
    nterm.setCursorPos(x, y);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].setCursorPos(x, y);
        end
    end
end

local function setCursorBlink(blink)
    nterm.setCursorBlink(blink);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].setCursorBlink(blink);
        end
    end
end

local function blit(text, textColour, backgroundColour)
    nterm.blit(text, textColour, backgroundColour);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].blit(text, textColour, backgroundColour);
        end
    end
end

local function write(text)
    nterm.write(text);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].write(text);
        end
    end
end

local function clearLine()
    nterm.clearLine();

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].clearLine();
        end
    end
end

local function getCursorPos()
    return nterm.getCursorPos();
end

local function isColour()
    return nterm.isColour();
end

local function getPaletteColour()
    return nterm.getPaletteColour();
end

local function setPaletteColour(colour, red, green, blue)
    nterm.setPaletteColour(colour, red, green, blue);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].setPaletteColour(colour, red, green, blue);
        end
    end
end

local function getSize()
    return nterm.getSize();
end

local function scroll(lines)
    nterm.scroll(lines);

    if #enterdisplays > 0 then
        for i = 1, #enterdisplays do
            enterdisplays[i].scroll(lines);
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
    nterm = nterm,

    bind = bind,
    unbind = unbind,

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
    getPaletteColour = getPaletteColour,
    getPaletteColor = getPaletteColour,
    setPaletteColour = setPaletteColour,
    setPaletteColor = setPaletteColour,
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