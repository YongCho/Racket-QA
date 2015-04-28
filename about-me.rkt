;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; File: about-me.rkt
;; Author: James Kuczynski
;; Email: jkuczyns@cs.uml.edu
;; File Description: Web-page for displaying project information when
;;                   the "About Me" button in master-gui.rkt is selected.
;;
;; Last Modified 04/24/2015
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




#lang web-server

(require web-server/servlet web-server/servlet-env)


(provide start-about-me-web-page)

(define (start-about-me-web-page request)
  (about-me-page request))


(define (about-me-page request)
    (display "Death to boat robbers!")
  (local ((define (response-generator embed/url)
            (response/xexpr
             `(html (head (title "Racket-Doc"))
               (body (h3 (center "Welcome to Racket-QA."))
                     (br)
                     (center (i "The leading toolkit for Racket Quality Assurance standards"))
                     (br)
                     ;;-------
                     (center '(a ((href "/quit")) "Exit"))
                     ;;-------
                     (p (b "Project Overview"))
                     '(a ((href "https://github.com/oplS15projects/Racket-QA/blob/master/Bottle-Racket/README.md")) "Bottle-Racket")
                     (br)(html nbsp nbsp nbsp nbsp)   
                     (html "This utility is used to convert Bottlenose test fiels into Racket test suite files.")
                     (br)(br)
                     '(a ((href "https://github.com/oplS15projects/Racket-QA/blob/master/Bottle-Racket/README.md")) "Test-Capture")
                     (br)(html nbsp nbsp nbsp nbsp) 
                     (html "This utility can run a specified test suite, with or without sending an email of the test results to a specified emailing list.")
                     (br)(br)
                     '(a ((href "https://github.com/oplS15projects/Racket-QA/blob/master/Test-Automation/readme.md")) "Test Scheduler")
                     (br)(html nbsp nbsp nbsp nbsp)
                     (html "This utility can run test suites at specified time intervals.  It also has the option of sending the results of each timed run to a mailing list.")
                     (br)(br)
                     '(a ((href "https://github.com/oplS15projects/Racket-QA/blob/master/Racket-Doc/README.md")) "Racket-Doc")
                     (br)(html nbsp nbsp nbsp nbsp)
                     (html "This utility extracts attributes and documentation form source *.rkt fiels and embeds them in generated web pages.")
                     (br)(br)
                     '(a ((href "https://github.com/oplS15projects/Racket-QA/blob/master/QA-Email/readme.md")) "Manage Mailing List")
                     (br)(html nbsp nbsp nbsp nbsp)
                     (html "Configure email database for recipients of test results.")
                     (br)(br)
                     (p (b "Racket Science Development Team"))
                     (html nbsp nbsp nbsp nbsp)
                     '(a ((href "https://github.com/Dossar")) "Roy Van Liew")
                     (br)(html nbsp nbsp nbsp nbsp)
                     '(a ((href "https://github.com/DeepBlue14")) "James Kuczynski")
                     (br)(html nbsp nbsp nbsp nbsp)
                     '(a ((href "https://github.com/YongCho")) "Yong Cho")
                     (br)(br)
                     (p (b "Licensing"))
                     (html "Racket Science grants permission to use, modify, and redistribute the aforementioned project.")
                     (br)
                     (html "However, we will accept monetary donations, hardware, or other tokens of gratitude.") 
                         )))))
    (send/suspend/dispatch response-generator)))


;;test exe
;(serve/servlet start-about-me-web-page
;               #:quit? #t
;               #:listen-ip "127.0.0.1"
;               ;#:port 8080
;               #:servlet-path "/")