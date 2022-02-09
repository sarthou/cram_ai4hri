(defsystem cram-ai4hri-pepper-description
  :depends-on (cram-prolog
               cram-robot-interfaces
               cram-location-costmap ; for robot-specific costmap metadata
               )
  :components
  ((:module "src"
    :components
    ((:file "package")
     (:file "general-knowledge" :depends-on ("package"))
     (:file "arms" :depends-on ("package"))
     (:file "neck" :depends-on ("package"))
     ))))