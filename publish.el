(require 'ox-publish)

(setq org-publish-project-alist
      `(("pages"
         :base-directory "posts/"
         :base-extension "org"
         :recursive t
         :publishing-directory "public/"
         :publishing-function org-html-publish-to-html
	 :auto-sitemap t
	 :sitemap-title "Blog Index"
         :sitemap-filename "index.org"
         :sitemap-style list
         :author "John Doe"
         :email "john.doe@example.com"
         :with-creator t)

	("css"
          :base-directory "css/"
          :base-extension "css"
          :publishing-directory "public/css"
          :publishing-function org-publish-attachment
          :recursive t)

        ("org/blog" :components ("pages" "css"))))

(setq org-export-html-validation-link nil)
(setq org-html-validation-link nil)
