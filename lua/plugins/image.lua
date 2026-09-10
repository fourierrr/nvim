return {
  {
    "3rd/image.nvim",
    lazy = false,
    build = false,
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      integrations = {
        markdown = {
          enabled = true,
          download_remote_images = true,
          only_render_image_at_cursor = false,
        },
      },
      max_width_window_percentage = 100,
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = true,
      hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
    },
  },
}
