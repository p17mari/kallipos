function Image(img)
      if img.classes:find('student',1) then
        local f = io.open("contributions/" .. img.src, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local caption = pandoc.utils.stringify(doc.meta.caption) or "Caption has not been set"
        local author = pandoc.utils.stringify(doc.meta.author) or "Author has not been set"
        local student = "> " .. caption .. " " .. author
        return pandoc.RawInline('markdown',student)
      end
end
