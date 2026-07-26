-- Converts "<!-- pagebreak -->" HTML comments into a LaTeX \newpage
-- when rendering to PDF/LaTeX. Invisible in normal Markdown previews
-- (GitHub, VS Code, etc.) since HTML comments are not displayed there.
function RawBlock(el)
  if el.format == "html" and el.text:match("^<!%-%-%s*pagebreak%s*%-%->$") then
    return pandoc.RawBlock("latex", "\\newpage")
  end
end
