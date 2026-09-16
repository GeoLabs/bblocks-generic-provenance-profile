# OSPD EO Artifact

Provenance of a **data artifact** produced or consumed by an OSPD / EOAP
workflow execution.

This building block profiles the Wf4Ever
[`wfprov:Artifact`](https://ogcincubator.github.io/bblocks-wf4ever/bblock/ogc.bbr.wf4ever.wfprov.Artifact)
(based on W3C PROV `prov:Entity`) and connects it to the EOAP data typing
building blocks:

- `wasOutputFrom` (**required**) — the process run that generated the artifact,
  keeping data lineage explicit.
- `role` (**required**) — the role of the artifact in the execution, constrained
  to `input`, `output` or `intermediate`.
- `checksum` (**required**) — integrity information, tightening the optional
  `wfprov:Artifact` checksum into a mandatory one for OSPD.
- `mediaType` (*optional*) — the IANA media type of the artifact data.
- `stacItem` (*optional*) — the artifact's STAC manifest, typed with
  [`eoap.cct.stac`](https://ogcincubator.github.io/bblocks-eoap-cct/bblock/eoap.cct.stac).
- `bbox` (*optional*) — the spatial extent, typed with
  [`eoap.cct.bbox`](https://ogcincubator.github.io/bblocks-eoap-cct/bblock/eoap.cct.bbox).

It also inherits `describedByParameter` and `value` from `wfprov:Artifact`.
