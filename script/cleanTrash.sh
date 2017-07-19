#! /bin/zsh

while true; do
  read Answer\?'Do you want to delete '$HOME'/.Trash/* files? [Y/n]'
  case $Answer in
    '' | [Yy]* )
			rm -rf $HOME/.Trash/*
      echo Deleted.
      break;
      ;;
    [Nn]* )
      echo Aborted.
      break;
      ;;
    * )
      echo Please answer YES or NO.
      ;;
  esac
done
