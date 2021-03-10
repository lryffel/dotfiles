function initUi()
  app.registerUi({["menu"] = "Cycle through line style", ["callback"] = "linestyle", ["accelerator"] = "q"}); -- q for no reason
  app.registerUi({["menu"] = "Select pen tool", ["callback"] = "pen", ["accelerator"] = "w"}); -- w for write
  app.registerUi({["menu"] = "Select eraser tool", ["callback"] = "eraser", ["accelerator"] = "e"}); -- e for erase
  app.registerUi({["menu"] = "Select highlighter tool", ["callback"] = "highlighter", ["accelerator"] = "f"}); -- f for fat
  app.registerUi({["menu"] = "Select select tool", ["callback"] = "selection", ["accelerator"] = "s"}); -- s for select
  app.registerUi({["menu"] = "Disable shortcuts (insert mode)", ["callback"] = "insert_mode", ["accelerator"] = "i"}); -- i for insert
  app.registerUi({["menu"] = "Enable shortcuts (normal mode)", ["callback"] = "normal_mode", ["accelerator"] = "<Ctrl><Shift>c"}); -- = "Escape" did not work
end

-- the modes are "normal" and "insert
local currentMode = "normal"

local linestyleList = {
  "PLAIN", 
  -- "DASH", 
  -- "DASH_DOT", 
  "DOT"
}
local currentLinestyle = 1

local selectList = {"RECT", "REGION", "OBJECT"} -- don't use play selection tool
local currentSelect = 1

function linestyle()
  currentLinestyle = currentLinestyle % #linestyleList + 1
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_" .. linestyleList[currentLinestyle]})
  print("ACTION_TOOL_LINE_STYLE_" .. linestyleList[currentLinestyle])
end

function selection()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
  end
end

function pen()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  end
end

function eraser()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
  end
end

function highlighter()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_HILIGHTER"})
  end
end

function insert_mode()
  currentMode = "insert"
end

function normal_mode()
  currentMode = "normal"
end
