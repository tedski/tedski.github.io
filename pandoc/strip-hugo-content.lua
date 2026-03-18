-- Strip the Download PDF link from the body
function Link(el)
  if pandoc.utils.stringify(el.content) == "Download PDF" then
    return {}
  end
  return el
end

-- Strip the job title heading
-- this is provided by front matter for styling
function Header(el)
  if el.level == 3 then
    local text = pandoc.utils.stringify(el)
    if text:match("^Staff Engineer") then
      return {}
    end
  end
  return el
end

-- Strip the contact line and horizontal rules
-- this is provided by front matter for styling
function Para(el)
  local text = pandoc.utils.stringify(el)
  if text:match("^Boulder Creek") then
    return {}
  end
  return el
end

-- Strip horizontal rules and let the LaTeX template handle it
-- these will be recreated by LaTeX
function HorizontalRule()
  return {}
end
