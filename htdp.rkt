(requare 2htdp/image)

;; Data definitions:

;; Countdown is one of:
;; - false
;; - Natural[1,10]
;; - "complete"
;; interp.
;;    false            means countdown has not yet started
;;    Natural[1, 10]   means countdown is running and how many seconds left
;;    "complite"       means count down is over
(define CD1 false)
(define CD2 10)        ;just started running
(define CD3 1)         ;almost over
(define CD4 "complete")
#;
(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(and (number? c) (<= 1 c) (<= c 10))(... c)]
        [else (...)]))
;; Templalte rules used:
;; - one of: 3 cases
;; - atomic distinct: false
;; - atomic non-distinct: Natural[1, 10]
;; - atomic distinct: "complete"

;; Functions:
;; Countdown -> Image
;; produce nice image of current state of contdown
(check-expect (countdown-to-image false) (square 0 "solid" "white"))
(check-expect (countdown-to-image 5) (text (number->string 5) 24 "black")
(check-expect (countdown-to-image "complite") text "Happy New Year!!!" 24 "red")

;(define (countdown-to-image c)(square 0 "solid" "white")); stub
;<use template from Countdown>
(define (countdown-to-image c)
  (cond [(false? c)
         (square 0 "solid" "wite")]
        [(and (number? c)(<= 1 c)(<= c 10))
         (text (number->string c) 24 "black")]
        [else
         (text "Happy New Year!!!" 24 "red")]))
