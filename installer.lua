-- Delete existing files which cannot be overwritten
fs.delete("/startup.lua");
fs.delete("/system");

-- Download startup file
shell.run("wget https://raw.githubusercontent.com/alexhorner/EnterpriseClient/master/startup.lua /startup.lua");

-- Download drivers
shell.run("wget https://raw.githubusercontent.com/alexhorner/EnterpriseClient/master/system/drivers/display.lua /system/drivers/display.lua");

-- Reboot
os.reboot();