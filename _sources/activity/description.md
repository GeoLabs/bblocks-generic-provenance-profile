# PROV Activity

A **PROV Activity** is something that occurs over a period of time and acts upon
or with entities; it may include consuming, processing, transforming, modifying,
relocating, using, or generating entities.

In the [W3C PROV](https://www.w3.org/TR/prov-o/) model, an activity is one of the
three *starting-point* classes together with **Entity** and **Agent**.

This building block is a **profile of** the canonical prov-schema activity
sub-schema [`ogc.ogc-utils.prov-activity`](https://ogcincubator.github.io/bblock-prov-schema/bblock/ogc.ogc-utils.prov-activity),
so it inherits all PROV activity properties (`id`, `provType`, `used`,
`startedAtTime`, `endedAtTime`, `wasAssociatedWith`, `wasInformedBy`, ...). It
can be linked to workflow-level provenance such as
[`ogc.bbr.wf4ever.wfprov.WorkflowRun`](https://ogcincubator.github.io/bblocks-wf4ever/bblock/ogc.bbr.wf4ever.wfprov.WorkflowRun).
