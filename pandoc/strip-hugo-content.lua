-- Strip the Download PDF link from the body
function Link(el)
  if pandoc.utils.stringify(el.content) == "Download PDF" then
    return {}
  end
  return el
end

-- Strip the name line from the body
function Header(el)
  if el.level == 1 then
    local text = pandoc.utils.stringify(el)
    if text == "Ted F. Strzalkowski" then
      return {}
    end
  end
  return el
end

-- Strip the contact and summary lines from the body
function Para(el)
  local text = pandoc.utils.stringify(el)
  if text:match("^Boulder Creek") or text:match("· Platform, Infrastructure") then
    return {}
  end
  return el
end

-- Strip horizontal rules and let the LaTeX template handle it
function HorizontalRule()
  return {}
end
