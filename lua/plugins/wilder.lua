return {
  "gelguy/wilder.nvim",
  event = "CmdlineEnter",
  config = function()
    local wilder = require("wilder")
    wilder.setup({ modes = { ":" } })  -- убрали "/" и "?"
    wilder.set_option("pipeline", {
      wilder.branch(
        wilder.cmdline_pipeline()
      ),
    })
    wilder.set_option("renderer", wilder.popupmenu_renderer({
      highlighter = wilder.basic_highlighter(),
    }))
  end,
}
