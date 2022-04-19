-- Hostname
if context ~= nil then
  print("" .. bold() .. white() .. context.user .. blue() .. "@" .. context.host .. reset())
end

-- OS
if distro ~= nil then
  print(
    ""
      .. "   - "
      .. bold()
      .. blue()
      .. "OS"
      .. reset()
      .. ": "
      .. distro.shortname
      .. " "
      .. distro.architecture
  )
end

-- Kernel
if kernel ~= nil then
  print(
    ""
      .. "   - "
      .. bold()
      .. blue()
      .. "Kernel"
      .. reset()
      .. ": "
      .. kernel.name
      .. " "
      .. kernel.version
  )
end

-- Uptime
if uptime ~= nil then
  local output = ""
  local function comma()
    if output ~= "" then
      output = output .. ", "
    end
  end
  local function s(v)
    if v ~= 1 and v ~= 0 then
      return "s"
    else
      return ""
    end
  end
  if uptime.days >= 1 then
    output = output .. uptime.days .. " day" .. s(uptime.days)
  end
  if uptime.hours >= 1 then
    comma()
    output = output .. uptime.hours .. " hour" .. s(uptime.hours)
  end
  if uptime.minutes >= 1 then
    comma()
    output = output .. uptime.minutes .. " minute" .. s(uptime.minutes)
  elseif uptime.hours == 0 then
    comma()
    output = output .. uptime.seconds .. " second" .. s(uptime.seconds)
  end

  print("" .. " 祥 - " .. bold() .. blue() .. "Uptime" .. reset() .. ": " .. output)
end

-- Shell
if shell ~= nil then
  print(
    ""
      .. "   - "
      .. bold()
      .. blue()
      .. "Shell"
      .. reset()
      .. ": "
      .. shell.name
      .. " "
      .. shell.version
  )
end

-- WM
if wm ~= nil then
  print("" .. "   - " .. bold() .. blue() .. "WM" .. reset() .. ": " .. wm)
end

-- Memory
if memory ~= nil then
  print(
    ""
      .. "   - "
      .. bold()
      .. blue()
      .. "Memory"
      .. reset()
      .. ": "
      .. math.floor(memory.used / 1024)
      .. "MB / "
      .. math.floor(memory.max / 1024)
      .. "MB"
  )
end
