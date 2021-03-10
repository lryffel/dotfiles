function initUi()
  app.registerUi({["menu"] = "Cycle through line style", ["callback"] = "linestyle", ["accelerator"] = "q"}); -- q for no reason
  app.registerUi({["menu"] = "Select pen tool", ["callback"] = "pen", ["accelerator"] = "w"}); -- w for write
  app.registerUi({["menu"] = "Select eraser tool", ["callback"] = "eraser", ["accelerator"] = "e"}); -- e for erase
  app.registerUi({["menu"] = "Select highlighter tool", ["callback"] = "highlighter", ["accelerator"] = "f"}); -- f for fat
  app.registerUi({["menu"] = "Select select tool", ["callback"] = "selection", ["accelerator"] = "s"}); -- s for select
end

local linestyleList = {
  "PLAIN", 
  -- "DASH", 
  -- "DASH_DOT", 
  "DOT"
}
local currentLinestyle = 1

function linestyle()
  currentLinestyle = currentLinestyle % #linestyleList + 1
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_" .. linestyleList[currentLinestyle]})
  print("ACTION_TOOL_LINE_STYLE_" .. linestyleList[currentLinestyle])
end

function selection()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
end

function pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
end

function eraser()
  app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
end

function highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HILIGHTER"})
end
