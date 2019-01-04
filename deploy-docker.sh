#!/bin/bash

#Common stuff to do
docker login


#setup frontend
echo 'Fronted Setup'
docker build -t newmaster/kubecourse-frontend ../frontend
sudo docker push newmaster/kubecourse-frontend
echo '----------------------------------------------------------------------------'


#setup Books Service
echo 'Books Service Setup'
docker build -t newmaster/kubecourse-books ../books-service
sudo docker push newmaster/kubecourse-books

echo '----------------------------------------------------------------------------'


#setup Author Service
echo 'Author Service Setup'
docker build -t newmaster/kubecourse-author ../author-service
sudo docker push newmaster/kubecourse-author


echo '----------------------------------END---------------------------------------'