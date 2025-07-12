#!/bin/bash

read -p "PLease enter your option of selection" name

case $name in
	[oO] | [Oo][Rr][Aa][Nn][Gg][Ee] )  # ya to o ho sirf ya O ho sirf ya fir Orange word kese bhi likha ho small , caps or mix of smallcaps input do but orange word pura likha hona chahiye.
		
	 echo "You requested couple of Oranges"
	  ;;
      [^apple][s][a][e][b])  # start me capital letter me ho either A, either P,Either L , either e , then saeb small me pura word hona chahiye
         echo "You reuqested couple of Apples"
	  ;;
  [,BANANA][k][e][l][a]) # , ka koi asar nahi h pehle letter ko small banane me , input me ise first letter capital me chahiye B, A me se koi bhi and end me kela small me chahiye 
	  echo "You requested for couple of Bananas"
	  ;;

	
      *)
	 echo "Your requested is unspecified"
	 ;;
esac




