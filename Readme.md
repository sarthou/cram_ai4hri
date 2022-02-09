```
(ros-load:load-system "cram_ai4hri_demo" :cram-ai4hri-demo)
(in-package :ai4hri-demo)
(roslisp-utilities:startup-ros)
```

If the bullet window crashs:

To show the list of threads you do `Alt-x` `slime-list-threads`
Then you do to the debug window line and press `k`
If the window is really frozen, it will still be there but ignore that.
Then to open it again you do: `(btr:add-debug-window btr:*current-bullet-world*)`
Now you can close the old window.

```
(prolog:prolog '(and (btr:bullet-world ?world)
                              (assert (btr:object-pose ?world :JULIETTEY20MP
                                                       ((2 0 0) (0 0 0 1))))))
```

Here the robot name comes from the urdf, we should find how to change it

getting the bullet world: `btr:*current-bullet-world*`

Parking the arms : `(cram-urdf-projection:with-simulated-robot (park-arms))`

To debug a position, you can display an axis with:
```
(btr:add-vis-axis-object (cl-transforms-stamped:make-pose-stamped "map" 0.0 (cl-transforms:make-3d-vector 3.992304032823615d0 -0.23999092812106254d0 0.9797999707361063d0) (cl-transforms:make-quaternion 0.0d0 0.0d0 -0.7088030576705933d0 0.7054063677787781d0))))
```