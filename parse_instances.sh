#!/bin/bash
#This is the first exercise-Parse the file
curl -o ec2-instances.csv https://raw.githubusercontent.com/BGLCorp/devops-interview-tests/main/ec2-instances.csv
awk -F, '{
    split($2, datetime, " ");
    time = datetime[1];
    date = datetime[2];

    if (date < "2022-04-12" || (date == "2022-04-12" && time < "13:00:00")) {
        print $1;
    }
}' ec2-instances.csv

