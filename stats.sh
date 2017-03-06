if [[ $1 == "--verbose" ]]; then
  printf "Lines of code:\n"
  printf "  .h files:\n"; find . -name '*.h' | xargs wc -l
  printf "  .cpp files:\n"; find . -name '*.cpp' | xargs wc -l
  printf "  .json files:\n"; find . -name '*.json' | xargs wc -l
else
  printf "Lines of code:\n"
  printf "  .h files: "; find . -name '*.h' | xargs wc -l | grep "total"
  printf "  .cpp files: "; find . -name '*.cpp' | xargs wc -l | grep "total"
  printf "  .json files: "; find . -name '*.json' | xargs wc -l | grep "total"
fi
