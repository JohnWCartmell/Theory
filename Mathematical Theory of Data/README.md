
## Mathematical Theory of Data
---------------------------

### Preparation for a Mathematical Theory of Data
This material considers 

- sketches of categories as data specifications and 
- functors into category of finite sets and functions as instances. 

This note develops the idea of a **requirement**  as a set of such functors and works through general principles of **Goodness of a data specification** wrt a requirement. 
I need to review this work...I think there are some gaps and some  may be fatal. 

### CategoriesWithDesignatedMonosAndEpis
In modern times at least this was my first attempt to get to a more realistic definition of data specification. I need to review this work. I think there are gaps and these gaps may be fatal flaws. I should summarise these gaps here. Subsequently I turned to restriction categories and range categories and I abandoned the idea of CategoriesWithDesignatedMonosAndEpis as data specifications. 

### Range Catgories
Once I discovered restriction categories and then range categories these took over my thinking as being the most appropriate candidates for data specifications. This work is unfinished and once again there may be fatal flaws. In the proof of representation oif functional dependencies there are two possible problems.

+ *one* determing mapping of C into c_s is faithful. At the weekend, Nov 2025 I realise this follows from equational completeness. Have I proved this though?

+ require a defintion of a category Part_s. This is a bit sketchy foundationally but I feel I should be able to use this idea. This is needed for the previous point.

### Mathematical Theory of Data Presentation
This folder contains a number of interlinked presentations.  
There is a README in the presentatioons folder. As described there, one presentation I produced for Univ. of Birmingham but then didn't deliver. One I delivered for the Topos Institute. This latter one is about range categories and has material which is not in the range category paper. 

In all of the above there are gaps and these gaps may not be fillable. Even where the gaps cannot be filled the concepts are correct and I need to make them stand alone. I need to review but representability implies BCNF/TNF ought to stand any way. The gaps may all be the (more esoteric?) redundancy free + maximal constrainedness implies representability. 

A recurrent theme is Hom functors as instances. What the Hom functor gives is an instance with a particular type populated freely. Even as I say that how can that be done when entitites have mandatory identifying features? What value is chosen for the idenitfier. And what if universal type is finite? I am thinking about specifications is which there is an endomorphism in which not exists n, f^n =id. But because instances are finite then in any instance I, there exists n such that I(f)^n = id. I am also thinking are there specifications and istances which cannot be populated incrementally. Should there be a  condition that instances can be defined incrementally. what do I mean by this? Is it apporiate that a data instance can not be built incrematally that it can only exist in its entirety. Does this relate to needing drop constraints to load a database. Hierarachial structure can come into this even relationally. So to endomorphisms.
