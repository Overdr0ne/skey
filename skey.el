;;; skey.el --- simple keybinding              -*- lexical-binding: t; -*-

;; Copyright (C) 2022  overdr0ne

;; Author: Overdr0ne <scmorris.dev@gmail.com>
;; Keywords: tools, lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; With this super key library, you’ll be re-defining sty.el with
;; pow-erf.el skeys!

;;; Code:

(defun skey-define-keys (keymaps defs)
  (dolist (def defs)
    (let* ((cmd-keys (nth 0 def))
           (cmd-sym (nth 1 def))
           (cmd-keys (if (stringp cmd-keys)
                         (kbd cmd-keys)
                       cmd-keys)))
      (dolist (keymap keymaps)
        (define-key (symbol-value keymap) cmd-keys cmd-sym)))))

(provide 'skey)
;;; skey.el ends here
