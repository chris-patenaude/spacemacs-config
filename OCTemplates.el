  ;; ---------------------
  ;; org-capture templates
  ;; ---------------------
  (setq org-capture-templates
        (quote ()))

  (add-to-list 'org-capture-templates
               '("t" "Task"))

  ;; Work TODO template (Prompts for Tag)
  (add-to-list 'org-capture-templates
               '("tw" "Work-related Task"  entry
                 (file+headline "~/Dropbox/Notes/work.org" "Tasks")
                 "* TODO %?\t%^g\n%U\n%a\n"))

  ;; Personal TODO template (Prompts for Tag)
  (add-to-list 'org-capture-templates
               '("tt" "todo" entry
                 (file+headline org-default-notes-file "Tasks")
                 "* TODO %?\t%^g\n%U\n%a\n"))

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
                 "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC"))

(provide 'OCTemplates)
