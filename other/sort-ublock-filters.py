from nis import match
import operator
import re


file = open("ublock-filters.txt", "r");

cosmetic = []
otherlines = []
domainfilters = []

for dirtyLine in file:
    line = dirtyLine.strip()

    if len(line) == 0:
        continue

    commentMatch = re.match(r'!\W', line)
    if commentMatch:
        # print(f'Discarded comment "{line.strip()}"')
        continue

    cosmeticMatch = re.search(r'[^\s.#|!\/]+\.(co\.uk|[^\s.#|!\/]+)(?=##)', line)
    if cosmeticMatch:
        domain = cosmeticMatch[0]
        cosmetic.append({"domain": domain, "line": line})
        continue

    domainMatch = re.match(r'\|\|', line)
    if domainMatch:
        domainfilters.append(line)
        continue

    otherlines.append(line)

cosmetic.sort(key=operator.itemgetter('domain'))
otherlines.sort()

outfile = open("ublock-filters-min.txt", "w+");


outfile.write("!! Domain filters\n")
for line in domainfilters:
    outfile.write(line + "\n")

outfile.write("\n\n")

outfile.write("!! Misc filters\n")
for line in otherlines:
    outfile.write(line + "\n")

outfile.write("\n\n")

outfile.write("!! Cosmetic filters\n")
prevdomain = ""
for entry in cosmetic:
    domain = entry['domain']
    if domain != prevdomain:
        outfile.write(f"\n! {domain}\n")
        prevdomain = domain
    outfile.write(entry['line'] + "\n")
