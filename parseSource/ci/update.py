import update_luawrap, update_wiki, update_parse
import json
from sys import argv

def main():
    update_luawrap.main()
    update_wiki.main()
    update_parse.main()

    with open("meta.json", "w") as f:
        json.dump({"target_tag": argv[1]}, f, indent=2)

if __name__ == "__main__":
    main()