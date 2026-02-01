--- Returns some pre-installed information, such as version number, download address, local files, etc.
--- @param ctx table
--- @field ctx.version string User-input version
--- @return table Version information
function PLUGIN:PreInstall(ctx)
    local version = ctx.version
    return {
        version = version,
    }
end
