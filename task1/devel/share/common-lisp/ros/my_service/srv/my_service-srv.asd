
(cl:in-package :asdf)

(defsystem "my_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "QuadraticSolution" :depends-on ("_package_QuadraticSolution"))
    (:file "_package_QuadraticSolution" :depends-on ("_package"))
  ))