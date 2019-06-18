;; template insertion file paths
(setq org-default-notes-file "~/Dropbox/Notes/notes.org")
(setq my-events-file "~/Dropbox/Notes/events.org")
(setq my-tasks-file "~/Dropbox/Notes/tasks.org")
(setq my-code-file "~/Dropbox/Notes/code.org")
(setq my-questions-file "~/Dropbox/Notes/questions.org")

;; Create the template list
(setq org-capture-templates
      (quote ()))

;; Setup task multi-key prefix
(add-to-list 'org-capture-templates
             '("t" "Task"))

;; Work task template
(add-to-list 'org-capture-templates
             '("tw" "Work Task"  entry
               (file my-tasks-file)
               "* TODO %?\t:TASK:WORK:\n%U\n%a\n"))

;; Personal personal template
(add-to-list 'org-capture-templates
             '("tt" "General" entry
               (file my-tasks-file)
               "* TODO %?\t:TASK:GENERAL:\n%U\n%a\n"))

;; Idea template
(add-to-list 'org-capture-templates
             '("i" "idea" entry
               (file org-default-notes-file)
               "* %? :IDEA:\n%U\n%a\n"))

;; Note template (prompts for tags)
(add-to-list 'org-capture-templates
             '("n" "note" entry
               (file org-default-notes-file)
               "* %? \t:NOTE:%^{Tag|GENERAL|SCHOOL|WAMS|DnD}:\n%U\n%a\n"))

;; Question template (prompts for tags)
(add-to-list 'org-capture-templates
             '("q" "Question" entry
               (file my-questions-file)
               "* %? \t:QUESTION:%^{Tag|GENERAL|CS372|CS340|SCHOOL|WAMS|DnD}:\n%U\n%a\n"))

;; Code Snippet template (Prompts for Tag)
(add-to-list 'org-capture-templates
             '("c" "Code Snippet" entry
               (file my-code-file)
               "* %?\t:CODE:%^{Tag|GENERAL|WORK|SCHOOL}:\n#+BEGIN_SRC %^{Language}\n\n#+END_SRC"))

;; Event template (Prompts for date and time)
(add-to-list 'org-capture-templates
             '("e" "Event" entry
               (file my-events-file)
               "* %?\t:EVENT:\n%^{Event}t"))

(provide 'OCTemplates)
