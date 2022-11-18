
function Image(img)
      local stringify = pandoc.utils.stringify
      if img.classes:find('studentcontribution',1) then
        local fn = img.src
        --print(fn)
        local f = io.open("contribution/" .. fn, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local figid = string.sub(fn,1,string.len(fn)-3)
        --local src = stringify(doc.meta.image_url) or "src has not been set" this is for an image I will uncomment if I add one
        src = "." .. src
        local caption = stringify(doc.meta.caption) 
        return pandoc.Image(caption,src,nil,"fig:" .. figid)
      end
end

