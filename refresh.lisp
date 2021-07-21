(ns-import 'iterator)

(let* ((images (list))
       (log-file "refresh-$(date +%D-%H-%M).log")
       (dockers (load "dockers.list"))
       (mk-image (fn (name dir) $(docker build --rm --network host -t $name $dir)))
       (image? (fn (i) ((fn (images i)
                          (if (null images) #f
                            (if (= (car images) i))
                              #t
                              (recur (cdr images) i)))images i)))
       (rmi (fn (docker) (if (image? docker) (do
                                               (print "Removing image: " docker)
                                               (if (= (wait $%(docker rmi -f $docker >> $logfile)) 0)
                                                 (println " SUCCEEDED")
                                                 (println " FAILED"))))))
       (create (fn (docker docker-dir) (if docker-dir
                                         (do
                                           (print "Creating image: " docker)
                                           (if (= (wait $%(docker build --rm --network host -t $docker ./$docker-dir >> $logfile)) 0)
                                             (println " SUCCEEDED")
                                             (println " FAILED")))))))

  (for x in (str-split #\newline $(docker images))
    (if (> (length x) 0)
      (set! images (join (vec-nth (str-split #\space x) 0) images))))
  (for dockerp in (reverse dockers)
       (let ((docker (car dockerp))) (rmi docker)))
  (for dockerp in dockers
       (let ((docker (car dockerp))
             (docker-dir (cdr dockerp)))
         (create docker docker-dir))))
