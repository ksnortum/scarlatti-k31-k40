%%% This engraver records the initial clef properties (e.g. what is set by \with { \clef ... })
%%% If in the first timestep these changed, engrave the original clef, and change formatting and break
%%% alignment of the actual clef to mimic a clef change clef. Duplicates some procedure from clef engraver
%%% and could easily be integrated.
#(define (initial-clef-change-engraver context)
   (let ((initial-clef-properties #f) (cclef #f) (keysigs '()))
     ; macro for checking if any clef property has changed
     (define (clef-changed)
       (>
        (length initial-clef-properties)
        (length
         (filter
          (lambda (x) (equal? (cdr x) (ly:context-property context (car x))))
          initial-clef-properties))))
     (make-engraver
      ; Record initials propertis
      ((initialize engraver)
       (set!
        initial-clef-properties
        `((clefGlyph . ,(ly:context-property context 'clefGlyph))
          (clefPosition  . ,(ly:context-property context 'clefPosition))
          (middleCClefPosition . ,(ly:context-property context 'middleCClefPosition))
          (clefTransposition  . ,(ly:context-property context 'clefTransposition)))))
      ; Record the actual clef to adjust. Use details.muted to not acknowledge clef created by this engraver.
      (acknowledgers
       ((clef-interface engraver grob source-engraver)
        (if (not (assoc-get 'muted (ly:grob-property grob 'details) #f))
            (set! cclef grob)))
       ((key-signature-interface engraver grob source-engraver)
        (set! keysigs (cons grob keysigs))))
      ; Create a clef if necessary
      ((process-music engraver)
       (if (and initial-clef-properties (clef-changed))
           (let ((clef (ly:engraver-make-grob engraver 'Clef '())))
             (ly:grob-set-property! clef 'staff-position (assoc-get 'clefPosition initial-clef-properties))
             (ly:grob-set-property! clef 'glyph (assoc-get 'clefGlyph initial-clef-properties))
             (ly:grob-set-nested-property! clef '(details muted) #t)
             (if ((lambda (x) (and (number? x) (not (= 0 x))))
                  (assoc-get 'clefTransposition initial-clef-properties 0))
                 (let ((mod (ly:engraver-make-grob engraver 'ClefModifier '()))
                       (formatter (ly:context-property context 'clefTranspositionFormatter))
                       (style (ly:context-property context 'clefTranspositionStyle))
                       (dir (sign (assoc-get 'clefTransposition initial-clef-properties 0)))
                       (abs_trans (1+ (abs (assoc-get 'clefTransposition initial-clef-properties 0)))))
                   (if (procedure? formatter)
                       (ly:grob-set-property! mod 'text (formatter (number->string abs_trans) style)))
                   (ly:grob-set-object! mod 'side-support-elements (ly:grob-list->grob-array (list clef)))
                   (ly:grob-set-parent! mod X clef)
                   (ly:grob-set-parent! mod Y clef)
                   (ly:grob-set-property! mod 'direction dir))))))
      ; Adjust the actual clef and key signatures
      ((process-acknowledged engraver)
       (if (and cclef initial-clef-properties (clef-changed))
           (begin
            (for-each
             (lambda (keysig)
               (ly:grob-set-property!
                keysig 'c0-position
                (assoc-get 'middleCClefPosition initial-clef-properties)))
             keysigs)

            (ly:grob-set-property! cclef 'non-default #t)
            (ly:grob-set-property! cclef 'break-align-symbol 'cue-clef)
            (if (not (eq? #t (ly:grob-property cclef 'full-size-change)))
                (ly:grob-set-property! cclef 'glyph-name
                                       (format #f "~a_change" (ly:grob-property cclef 'glyph)))))))
      ; Unset parameters
      ((stop-translation-timestep engraver)
       (set! initial-clef-properties #f)
       (set! clef #f)
       (set! keysigs '())))))

%%%
%%% Usage
%%%

% \layout {
%   \context {
%     \Staff
%     \consists #initial-clef-change-engraver
%   }
% }
% 
% <<
%   % Initial treble, then bass
%   \new Staff {
%     \key f\major
%     \clef bass
%     1
%   }
%   % Initial bass, then treble
%   \new Staff \with { \clef bass } {
%     \key f\major
%     \clef treble
%     1
%   }
%   % Just treble
%   \new Staff {
%     \key f\major
%     1
%   }
%   % Just bass
%   \new Staff \with { \clef bass } {
%     \key f\major
%     1
%   }
% >>
