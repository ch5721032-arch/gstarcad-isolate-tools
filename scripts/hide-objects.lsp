;; hide-objects.lsp - Hide the selected objects
;; Command: HIDEOBJ
(defun c:HIDEOBJ ( / ss )
  (setq ss (ssget "\nSelect objects to hide: "))
  (if ss
    (progn
      (command "_.HIDEOBJECTS" ss "")
      (princ "\nSelection hidden.")
    )
  )
  (princ)
)
