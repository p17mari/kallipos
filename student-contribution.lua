function studentfont()
  --[[
  
  if img.classes:find('student',1) 
  stringify = pandoc.utils.stringify
  if #el.content == 1 then
    local ft = stringify(el.content[1]) 
    if string.sub(ft,1,4) == "fig:" then
        local fn = string.sub(ft,5)
        --print(fn)
        local f = io.open("figures/" .. fn .. ".md", 'r')
  change forn here -->  ObjectFont = Fonts.studentfont
  
  maybe before printing the local add border here
    add student author credentials in upper left corner.
    add student contribution icon on the left corner
        local doc = pandoc.read(f:read('*a'))]
  f:close()
  local print("No student contributions in this chapter,")
  return pandoc.Note("*@" .. ft .. " " .. title .. " (" .. license_text .. ")")
   --]]
  
  end
