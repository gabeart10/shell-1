#My Funtions Library



ask ()
{
  ask_question="$1"
  right_answer="$2"
  echo "$SOL_yellow $ask_question $SOL_reset"
  printf '> '
  read answer
  answer=`echo "$answer" | tr '[:upper:]' '[:lower:]'`
  if [ "$right_answer" = "$answer" ]; then
    echo $SOL_clear
    return 0
  else
    echo $SOL_clear
    return 1
  fi  
}
