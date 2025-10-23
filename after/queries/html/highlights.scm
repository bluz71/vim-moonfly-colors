; inherits: html

; match at attribute, for example: <button @click="counter++">
(attribute
  (attribute_name) @attribute.on
  (#lua-match? @attribute.on "^%@"))

; match bind attribute, for example: <button :class="foo">
(attribute
  (attribute_name) @attribute.bind
  (#lua-match? @attribute.bind "^%:"))
