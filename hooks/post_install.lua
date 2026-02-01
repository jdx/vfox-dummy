function PLUGIN:PostInstall(ctx)
    local rootPath = ctx.rootPath
    os.execute("mkdir -p " .. rootPath .. "/bin")
    local dummy_file = io.open(rootPath .. "/bin/dummy", "w")
    if dummy_file then
        dummy_file:write("#!/bin/sh\necho 'dummy version 1.0.0'\n")
        dummy_file:close()
        os.execute("chmod +x " .. rootPath .. "/bin/dummy")
    end
end
