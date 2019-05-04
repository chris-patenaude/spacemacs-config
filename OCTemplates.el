;; Create the template list
(setq org-capture-templates
      (quote ()))

;; Setup task multi-key prefix
(add-to-list 'org-capture-templates
             '("t" "Task"))

;; Work TODO template (Prompts for Tag)
(add-to-list 'org-capture-templates
             '("tw" "Work-related Task"  entry
               (file+headline "~/Dropbox/Notes/work.org" "Tasks")
               "* TODO %?\n%U\n%a\n"))

;; Personal TODO template (Prompts for Tag)
(add-to-list 'org-capture-templates
             '("tt" "todo" entry
               (file+headline org-default-notes-file "Tasks")
               "* TODO %?\n%U\n%a\n"))

;; Idea template
(add-to-list 'org-capture-templates
             '("i" "idea" entry
               (file+headline org-default-notes-file "Ideas")
               "* %? :IDEA:\n%U\n%a\n"))

;; Note template
(add-to-list 'org-capture-templates
             '("n" "note" entry
               (file+headline org-default-notes-file "Notes")
               "* %? :NOTE:\n%U\n%a\n"))

;; Code Snippet template (Prompts for Tag)
(add-to-list 'org-capture-templates
             '("c" "Code Snippet" entry
               (file+headline org-default-notes-file "Code Snippets")
               "* %?\t:CODE:%^{Tag|SNIPPET|CS340|CS372}:\n#+BEGIN_SRC %^{Language}\n\n#+END_SRC"))

(provide 'OCTemplates)
