_G.enterprise = {
    driver = {
        display = loadfile("/system/drivers/display.lua")()
    }
};

term.redirect(enterprise.driver.display);

term.clear();
print("EnterOS");
shell.run("shell");