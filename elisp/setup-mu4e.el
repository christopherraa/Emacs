(defun file-string (file)
	"Read the contents of a file and return as a string."
	(with-current-buffer (find-file-noselect file)
		(buffer-string)))
(setq
	mu4e-maildir "~/Maildir"
	mu4e-drafts-folder "/INBOX/Drafts"
	mu4e-sent-folder   "/INBOX/Sent"
	mu4e-trash-folder  "/INBOX/Trash"
	mu4e-split-view 'vertical
	mu4e-headers-visible-columns 110
	mu4e-headers-include-related nil

	mu4e-maildir-shortcuts
	'( (:maildir "/INBOX"        :key ?i)
		 (:maildir "/INBOX/Sent"   :key ?s)
		 (:maildir "/INBOX/Drafts" :key ?d)
		 (:maildir "/INBOX/Trash"  :key ?t))
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
	mu4e-view-show-addresses 't
	message-citation-line-format "%a %d %b %Y klokken %R, skrev %f:"
	message-citation-line-function 'message-insert-formatted-citation-line
	mu4e-compose-format-flowed t
	mu4e-compose-signature (file-string "~/.email-signature.txt")
	message-send-mail-function 'smtpmail-send-it
	smtpmail-stream-type 'ssl
	smtpmail-default-smtp-server "secure.emailsrvr.com"
	smtpmail-smtp-server "secure.emailsrvr.com"
	smtpmail-smtp-service 465)

(add-hook 'mu4e-compose-mode-hook (lambda () (use-hard-newlines -1)))
(require 'mu4e)
(mu4e-headers-toggle-threading t)
