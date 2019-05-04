;; template insertion file paths
(setq org-default-notes-file "~/Dropbox/Notes/notes.org")
(setq my-events-file "~/Dropbox/Notes/events.org")
(setq my-tasks-file "~/Dropbox/Notes/tasks.org")

;; Create the template list
(setq org-capture-templates
      (quote ()))

;; Setup task multi-key prefix
(add-to-list 'org-capture-templates
             '("t" "Task"))

;; Work task template
(add-to-list 'org-capture-templates
             '("tw" "Work Task"  entry
               (file+headline my-tasks-file "Work")
               "* TODO %?\t:TASK:WORK:\n%U\n%a\n"))

;; Personal personal template
(add-to-list 'org-capture-templates
             '("tt" "General" entry
               (file+headline my-tasks-file "General")
               "* TODO %?\t:TASK:GENERAL:\n%U\n%a\n"))

;; Idea template
(add-to-list 'org-capture-templates
             '("i" "idea" entry
               (file+headline org-default-notes-file "Ideas")
               "* %? :IDEA:\n%U\n%a\n"))

;; Note template (prompts for tags)
(add-to-list 'org-capture-templates
             '("n" "note" entry
               (file+headline org-default-notes-file "Notes")
               "* %? \t:NOTE:%^{Tag|GENERAL|SCHOOL|WAMS|DnD}:\n%U\n%a\n"))

;; Code Snippet template (Prompts for Tag)
(add-to-list 'org-capture-templates
             '("c" "Code Snippet" entry
               (file+headline org-default-notes-file "Code Snippets")
               "* %?\t:CODE:%^{Tag|GENERAL|WORK|SCHOOL}:\n#+BEGIN_SRC %^{Language}\n\n#+END_SRC"))

;; Event template (Prompts for date and time)
(add-to-list 'org-capture-templates
             '("e" "Event" entry
               (file+headline my-events-file "Events")
               "* %?\t:EVENT:\n%^{Event}t"))

(provide 'OCTemplates)
