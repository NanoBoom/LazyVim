return {
  {
    "NanoBoom/claudecode.nvim",
    dev = true,
    opts = {
      workspace_folders_fn = function(basename)
        return {
          "/workspaces/" .. basename,
        }
      end, -- Optional: custom function to compute workspace folders
    },
    keys = {
      -- Add Context
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Claude: Add buffer" },
      { "<leader>aw", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Claude: Send selection" },
      {
        "<leader>aw",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Claude: Add file from tree",
        ft = { "NvimTree", "neo-tree", "oil" },
      },
      {
        "<leader>ar",
        "<cmd>ClaudeCodeRestart<cr>",
        desc = "Claude: Restart",
      },

      -- Diff Management (vim-style: j=accept/down, k=reject/up)
      { "<leader>aj", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Claude: Accept diff" },
      { "<leader>ak", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Claude: Reject diff" },
    },
  },
}
