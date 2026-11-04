;; unisolate-objects.lsp - Restore all hidden objects
;; Command: UNISO
(defun c:UNISO ( / )
  (command "_.UNISOLATEOBJECTS")
  (princ "\nAll objects restored.")
  (princ)
)
