function PLUGIN:EnvKeys(ctx)
    local version_path = ctx.path
    if RUNTIME.osType == "windows" then
        return {
            {
                key = "PATH",
                value = version_path
            },
        }
    else
        return {
            {
                key = "PATH",
                value = version_path .. "/bin"
            },
        }
    end
end
