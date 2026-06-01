(rule
  name: (identifier) @name) @item

(pool
  name: (identifier) @name) @item

(build
  (outputs
    (path) @name)
  rule: (identifier) @context) @item

(default
  (targets
    (path) @name)) @item

