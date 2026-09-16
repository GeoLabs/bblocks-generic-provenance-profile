# PROV Agent

A **PROV Agent** is something that bears some form of responsibility for an
activity taking place, for the existence of an entity, or for another agent's
activity. An agent may be a person, an organization, or a piece of software
(`prov:Person`, `prov:Organization`, `prov:SoftwareAgent`).

In the [W3C PROV](https://www.w3.org/TR/prov-o/) model, an agent is one of the
three *starting-point* classes together with **Entity** and **Activity**.

This building block is a **profile of** the canonical prov-schema agent
sub-schema [`ogc.ogc-utils.prov-agent`](https://ogcincubator.github.io/bblock-prov-schema/bblock/ogc.ogc-utils.prov-agent),
so it inherits all PROV agent properties (`id`, `provType`, `actedOnBehalfOf`,
...).
