(defun file-string (file)
	"Read the contents of a file and return as a string."
	(with-current-buffer (find-file-noselect file)
		(buffer-string)))

(setq
	mu4e-maildir "~/Maildir"
	mu4e-drafts-folder "/INBOX.Drafts"
	mu4e-sent-folder   "/INBOX.Sent"
	mu4e-trash-folder  "/INBOX.Trash"
	mu4e-split-view 'vertical
	mu4e-headers-visible-columns 110

	mu4e-maildir-shortcuts
	'( ("/INBOX"       . ?i)
		 ("/INBOX.Sent"  . ?s)
		 ("/INBOX.Drafts" . ?d)
		 ("/INBOX.Trash" . ?t))
	mu4e-headers-fields
	'( (:human-date . 16)
		 (:flags . 6)
		 (:from-or-to . 22)
		 (:subject))

	mu4e-get-mail-command "/bin/true"
	mu4e-update-interval 30
	mu4e-use-fancy-chars t
	mu4e-html2text-command "w3m -T text/html"
	mu4e-user-mail-address-list (list "christopher@stix.no" "christopher.raa@stix.no")

	user-mail-address "christopher@stix.no"
	mu4e-reply-to-address "christopher@stix.no"
	user-full-name  "Christopher Rasch-Olsen Raa"

	mu4e-compose-signature (file-string "~/.email-signature.txt")
	message-send-mail-function 'smtpmail-send-it
	smtpmail-stream-type 'ssl
	smtpmail-default-smtp-server "secure.emailsrvr.com"
	smtpmail-smtp-server "secure.emailsrvr.com"
	smtpmail-smtp-service 465)

(require 'mu4e)
(mu4e-headers-toggle-threading t)
