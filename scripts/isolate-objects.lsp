;; isolate-objects.lsp - Show only the selected objects
;; Command: ISO
(defun c:ISO ( / ss )
  (setq ss (ssget "\nSelect objects to isolate: "))
  (if ss
    (progn
      (command "_.ISOLATEOBJECTS" ss "")
      (princ "\nOnly the selection is now visible.")
    )
  )
  (princ)
)
