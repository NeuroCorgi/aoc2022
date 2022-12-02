(define (accumulate proc init seq)
  (if (null? seq) init
      (accumulate proc (proc init (car seq)) (cdr seq))))
(define (sum seq) (accumulate + 0 seq))

(define (get-input source)
  (define (read-batch source)
    (let ((char (peek-char source)))
      (if (or (char=? char #\newline) (eof-object? char))
          (begin (read-char source) '())
          (let ((val (string->number (read-line source))))
            (cons val (read-batch source))))))
  (if (eof-object? (peek-char source))
      '()
      (let ((batch (read-batch source)))
        (cons batch (get-input source)))))

(define (part1 data)
  (let ((t (map sum data)))
    (accumulate max (car t) (cdr t))))

(define (part2 data)
  (define (iter mx1 mx2 mx3 seq)
    (if (null? seq) (list mx1 mx2 mx3)
        (let ((val (car seq))
              (rest (cdr seq)))
          (cond ((> val mx1) (iter val mx1 mx2 rest))
                ((> val mx2) (iter mx1 val mx2 rest))
                ((> val mx3) (iter mx1 mx2 val rest))
                (else (iter mx1 mx2 mx3 rest))))))
  (let ((t (map sum data)))
    (sum (iter 0 0 0 t))))


(define s (open-input-file "input.txt"))

(let ((input (get-input s)))
    (display (part1 input))
    (newline)
    (display (part2 input)
    (newline)))