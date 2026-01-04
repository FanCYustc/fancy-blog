import { QuartzTransformerPlugin } from "../types"

export const FixAdmonition: QuartzTransformerPlugin = () => {
  return {
    name: "FixAdmonition",
    textTransform(_ctx, src) {
      // Regex to match ```ad-<type> ... ``` blocks
      // Captures: 1=type, 2=title(optional), 3=content
      const adBlockRegex = /```ad-([a-zA-Z]+)(?:[ ]+(.*))?\n([\s\S]*?)\n```/g
      
      return src.replace(adBlockRegex, (match, type, title, content) => {
        // Format the title if it exists
        const header = `> [!${type}]${title ? " " + title : ""}`
        
        // Format the content by adding "> " to each line
        const body = content.split("\n").map((line: string) => `> ${line}`).join("\n")
        
        return `${header}\n${body}`
      })
    },
  }
}
