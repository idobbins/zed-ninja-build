[
  "default"
  "pool"
  "rule"
  "build"
] @keyword

[
  "include"
  "subninja"
] @keyword.import

":" @punctuation.delimiter

[
  "="
  "|"
  "||"
  "|@"
] @operator

[
  "$"
  "{"
  "}"
] @punctuation.special

(comment) @comment
(split) @comment

(path) @string.special
(text) @string
(quote) @string.escape

(pool
  name: (identifier) @type)

(pool
  name: (identifier) @type.builtin
  (#eq? @type.builtin "console"))

(rule
  name: (identifier) @function)

(build
  rule: (identifier) @function)

(build
  rule: (identifier) @function.builtin
  (#any-of? @function.builtin "phony" "dyndep"))

(let
  name: (identifier) @property)

(manifest
  (let
    name: (identifier) @constant.builtin
    (#any-of? @constant.builtin
      "builddir"
      "ninja_required_version")))

(rule
  (body
    (let
      name: (identifier) @property.builtin
      (#any-of? @property.builtin
        "command"
        "depfile"
        "deps"
        "msvc_deps_prefix"
        "description"
        "dyndep"
        "generator"
        "in"
        "in_newline"
        "out"
        "restat"
        "rspfile"
        "rspfile_content"
        "pool"))))

(expansion
  (identifier) @constant)

(expansion
  (identifier) @constant.builtin
  (#any-of? @constant.builtin "in" "out"))

