(build
  (outputs
    (path) @run @target)
  (#set! tag ninja-target))

(default
  (targets
    (path) @run @target)
  (#set! tag ninja-target))

