(let
  name: (identifier) @_name
  value: (text) @injection.content
  (#eq? @_name "command")
  (#set! injection.language "Shell Script"))

