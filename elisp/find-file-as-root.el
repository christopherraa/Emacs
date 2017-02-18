;; Shamelessly copied from http://www.draketo.de/light/english/emacs/babcore
;;; Open files as root - quickly
(defcustom find-file-root-prefix "/sudo:root@localhost:"
	"Tramp root prefix to use.")

(defun find-file-as-root ()
	"Like `ido-find-file, but automatically edit the file with
root-privileges (using tramp/sudo), if the file is not writable by
user."
	(interactive)
	(let ((file (ido-read-file-name "Edit as root: ")))
		(unless (file-writable-p file)
			(setq file (concat find-file-root-prefix file)))
		(find-file file)))
;; or some other keybinding...
;; (global-set-key (kbd "C-x F") 'djcb-find-file-as-root)

(defun find-current-as-root ()
	"Reopen current file as root"
	(interactive)
	(set-visited-file-name (concat find-file-root-prefix (buffer-file-name)))
	(setq buffer-read-only nil))
