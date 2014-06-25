(setq
	mu4e-maildir "~/Maildir"
	mu4e-drafts-folder "/INBOX.Drafts"
	mu4e-sent-folder   "/INBOX.Sent"
	mu4e-trash-folder  "/INBOX.Trash"

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
	mu4e-html2text-command "html2text"
	mu4e-user-mail-address-list (list "christopher@stix.no" "christopher.raa@stix.no")

	user-mail-address "christopher@stix.no"
	message-signature-file "~/.email-signature.txt"
	message-send-mail-function 'smtpmail-send-it
	smtpmail-stream-type 'ssl
	smtpmail-default-smtp-server "secure.emailsrvr.com"
	smtpmail-smtp-server "secure.emailsrvr.com"
	smtpmail-smtp-service 465)

(mu4e-headers-toggle-threading t)
