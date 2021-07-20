(ns-import 'iterator)

(let* ((images (list))
       (dockers (load "dockers.list"))
       (mk-image (fn (name dir) $(docker build --rm --network host -t $name $dir)))
       (image? (fn (i) ((fn (images i)
                          (if (null images) #f
                            (if (= (car images) i))
                              #t
                              (recur (cdr images) i)))images i))))

  (for x in (str-split #\newline $(docker images))
    (if (> (length x) 0)
      (set! images (join (vec-nth (str-split #\space x) 0) images))))
  (for dockerp in (reverse dockers)
       (let ((docker (car dockerp)))
         (if (image? (str docker)) $(docker rmi -f $docker))))
  (for dockerp in dockers
       (let ((docker (car dockerp))
             (docker-dir (cdr dockerp)))
         (if docker-dir 
           $(docker build --rm --network host -t $docker ./$docker-dir)))))
