#My Funtions Library



ask ()
{
  question="$1"
  right_answer="$2"
  echo "$SOL_yellow $question $SOL_reset"
  printf '> '
  read answer
  answer=`echo $answer | tr '[:upper:]' '[:lower:]'`
  if [ "$right_answer" = $answer ]; then
    echo $SOL_clear
    return 0
  else
    echo $SOL_clear
    return 1
  fi  
    
}
