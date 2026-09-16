# PROV Entity

A **PROV Entity** is a physical, digital, conceptual, or other kind of thing
with some fixed aspects; entities may be real or imaginary.

In the [W3C PROV](https://www.w3.org/TR/prov-o/) model, an entity is one of the
three *starting-point* classes together with **Activity** and **Agent**.

This building block is a **profile of** the canonical prov-schema entity
sub-schema [`ogc.ogc-utils.prov-entity`](https://ogcincubator.github.io/bblock-prov-schema/bblock/ogc.ogc-utils.prov-entity),
so it inherits all PROV entity properties (`id`, `provType`, `wasGeneratedBy`,
`wasDerivedFrom`, `wasAttributedTo`, `generatedAtTime`, ...). In the OSPD / EOAP
context it can be specialised to type entities as STAC items or GeoJSON using
the [`eoap.cct.*`](https://ogcincubator.github.io/bblocks-eoap-cct/) types.
