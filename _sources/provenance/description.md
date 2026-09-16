# Provenance Bundle

An OSPD / EOAP **provenance bundle** built directly on the canonical W3C PROV
chain [`ogc.ogc-utils.prov`](https://ogcincubator.github.io/bblock-prov-schema/bblock/ogc.ogc-utils.prov).

A payload may be a single provenance object or an array of entities, activities
and agents forming the full provenance chain. Because this register imports
[bblock-prov-schema](https://github.com/ogcincubator/bblock-prov-schema),
[bblocks-wf4ever](https://github.com/ogcincubator/bblocks-wf4ever) and
[bblocks-eoap-cct](https://github.com/ogcincubator/bblocks-eoap-cct), a bundle
can combine generic PROV provenance with workflow-level provenance
(`ogc.bbr.wf4ever.wfprov.*`) and EOAP data typing (`eoap.cct.*`).
