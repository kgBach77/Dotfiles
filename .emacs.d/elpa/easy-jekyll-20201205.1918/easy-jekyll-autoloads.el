;;; easy-jekyll-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "easy-jekyll" "easy-jekyll.el" (0 0 0 0))
;;; Generated autoloads from easy-jekyll.el

(autoload 'easy-jekyll-article "easy-jekyll" "\
Open a list of articles written in jekyll with dired.

\(fn)" t nil)

(autoload 'easy-jekyll-magit "easy-jekyll" "\
Open magit at current blog.

\(fn)" t nil)

(autoload 'easy-jekyll-image "easy-jekyll" "\
Generate image link.

\(fn)" t nil)

(autoload 'easy-jekyll-put-image "easy-jekyll" "\
Move image to image directory and generate image link.

\(fn)" t nil)

(autoload 'easy-jekyll-pull-image "easy-jekyll" "\
Pull image from internet to image directory and generate image link.

\(fn)" t nil)

(autoload 'easy-jekyll-publish-clever "easy-jekyll" "\
Clever publish command.
Automatically select the deployment destination from init.el.

\(fn)" t nil)

(autoload 'easy-jekyll-publish "easy-jekyll" "\
Adapt local change to the server with jekyll.

\(fn)" t nil)

(autoload 'easy-jekyll-publish-timer "easy-jekyll" "\
A timer that publish after the specified number as N of minutes has elapsed.

\(fn N)" t nil)

(autoload 'easy-jekyll-cancel-publish-timer "easy-jekyll" "\
Cancel timer that publish after the specified number of minutes has elapsed.

\(fn)" t nil)

(autoload 'easy-jekyll-firebase-deploy "easy-jekyll" "\
Deploy jekyll source at firebase hosting.

\(fn)" t nil)

(autoload 'easy-jekyll-firebase-deploy-timer "easy-jekyll" "\
A timer that firebase deploy after the specified number as N of minutes has elapsed.

\(fn N)" t nil)

(autoload 'easy-jekyll-cancel-firebase-deploy-timer "easy-jekyll" "\
Cancel timer that firebase deploy after the specified number of minutes has elapsed.

\(fn)" t nil)

(autoload 'easy-jekyll-newpost "easy-jekyll" "\
Create a new post with jekyll.
POST-FILE needs to have and extension '.md' or '.textile'.

\(fn POST-FILE)" t nil)

(autoload 'easy-jekyll-preview "easy-jekyll" "\
Preview jekyll at localhost.

\(fn)" t nil)

(autoload 'easy-jekyll-github-deploy "easy-jekyll" "\
Execute `easy-jekyll-github-deploy-script' script locate at `easy-jekyll-basedir'.

\(fn)" t nil)

(autoload 'easy-jekyll-github-deploy-timer "easy-jekyll" "\
A timer that github-deploy after the specified number as N of minutes has elapsed.

\(fn N)" t nil)

(autoload 'easy-jekyll-cancel-github-deploy-timer "easy-jekyll" "\
Cancel timer that github-deploy after the specified number of minutes has elapsed.

\(fn)" t nil)

(autoload 'easy-jekyll-amazon-s3-deploy "easy-jekyll" "\
Deploy jekyll source at Amazon S3.

\(fn)" t nil)

(autoload 'easy-jekyll-amazon-s3-deploy-timer "easy-jekyll" "\
A timer that amazon-s3-deploy after the specified number as N of minutes has elapsed.

\(fn N)" t nil)

(autoload 'easy-jekyll-cancel-amazon-s3-deploy-timer "easy-jekyll" "\
Cancel timer that amazon-s3-deploy after the specified number of minutes has elapsed.

\(fn)" t nil)

(autoload 'easy-jekyll-google-cloud-storage-deploy "easy-jekyll" "\
Deploy jekyll source at Google Cloud Storage.

\(fn)" t nil)

(autoload 'easy-jekyll-google-cloud-storage-deploy-timer "easy-jekyll" "\
A timer that google-cloud-storage-deploy after the specified number as N of minutes has elapsed.

\(fn N)" t nil)

(autoload 'easy-jekyll-cancel-google-cloud-storage-deploy-timer "easy-jekyll" "\
Cancel timer that google-cloud-storage-deploy after the specified number of minutes has elapsed.

\(fn)" t nil)

(autoload 'easy-jekyll-ag "easy-jekyll" "\
Search for blog article with `counsel-ag' or `helm-ag'.

\(fn)" t nil)

(autoload 'easy-jekyll-open-config "easy-jekyll" "\
Open Jekyll's config file.

\(fn)" t nil)

(autoload 'easy-jekyll-select-postdir "easy-jekyll" "\
Select postdir you want to go.

\(fn)" t nil)

(autoload 'easy-jekyll-select-filename "easy-jekyll" "\
Select filename you want to open.

\(fn)" t nil)

(autoload 'easy-jekyll-select-blog "easy-jekyll" "\
Select blog url you want to go.

\(fn)" t nil)

(autoload 'easy-jekyll "easy-jekyll" "\
Easy jekyll mode.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "easy-jekyll" '("easy-jekyll-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; easy-jekyll-autoloads.el ends here
