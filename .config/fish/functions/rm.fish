# Defined in - @ line 1
function rm --wraps='echo "Use tp instead"' --description 'alias rm echo "Use tp instead"'
  echo "Use tp instead" $argv;
end
