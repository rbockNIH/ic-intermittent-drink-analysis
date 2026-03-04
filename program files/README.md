# IntelliCage Programs

These files have been generated with the Designer program by [TSE](https://www.tse-systems.com) to control the [IntelliCages](https://www.tse-systems.com/products/intellicage/) and are only useful in conjuction with the cages and propriatary software. 

They are published here to help users to either implement the same experimental design or use them as an inspiration to create variations for their experimental needs.

This sets contains the following 4 programs:

- [Free Adaptation Template _.experiment_](#free-adaptation-template-experiment)
- Water Training Template _.experiment_
- Intermittent Alcohol Template _.experiment_
- Open Bar Template _.experiment_


_Note:_
All templates come with 4 entered animals to serve as an example for grouping and use of clusters. The entries will need to be deleted and replaced with the information for the current cohort before use. It is also set to work on IntelliCage 1 and 2. If your setup uses more cages or different cage id number, the would need to be changed in the `Setup` tab. 

## Free Adaptation Template _.experiment_

This template allows a new cohort of mice to freely explore all corners of a cage to habituate them to their new environment. Each visits triggers the doors to open. They stay open until the visit ends. This requires the animals to be implanted with the RFID transmitter. The resulting data will give a snapshot of potential biases for individual animals for specific corners. 

Creating and assigning animals to groups before the start of the program will help with later analysis, though all of them will use the same module and cluster. The Default cluster sets all corners to neutral and is the only cluster used in this program.

## Water Training Template _.experiment_

The intention with this program is to train all animals to go from fixed ratio 1 to fixed ratio 3 (FR3) to open any door. All corners contain water bottles and they are free to choose which corner they prefer. A single nosepoke into any door will open the doors for the corner. A visits without any poke will be counted as a failure to calculate the 60% success rate. After reaching the success rate, the module switches for each animal individually to the FR3 ratio, i.e. now the animal has to poke 3 times for the doors to open. Once they mice reach the FR3, the program continues until the experimentator decides to terminate the program. 

The groups and cluster assignments are not strictly necessary to successfully train the animals, but prior group assignment will make the analysis and monitoring much easier.

## Intermittent Alcohol Template _.experiment_

Intermittent alcohol access every other day on a FR3.

## Open Bar Template _.experiment_

Test alcohol drinking without the need for operant controlled access (doors open upon visit).

# Publications

These programs have been used to generate the data sets contributing to the following publications:

1. Bocarsley, ME _et al._ **Preexisting risk-avoidance and enhanced alcohol relief are driven by imbalance of the striatal dopamine receptors in mice**. Nature Communications (2024), doi: [10.1038/s41467-024-53414-y](https://www.nature.com/articles/s41467-024-53414-y)
2. Anderson LG _et al._ **Early life adversity increases striatal dopamine D1 receptor density and promotes social alcohol drinking in mice, especially males**. bioRxiv (2025), doi: [10.1101/2025.11.10.687736](https://doi.org/10.1101/2025.11.10.687736)

# Questions

For any questions regaring these programs, please contact me at my publicly available email for this repository.
